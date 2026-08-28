#!/usr/bin/env python3
"""Generate a Homebrew formula from .formula-template + metadata/<formula>.json.

Usage: generate-formula.py <formula> <version> <macos_sha256> <linux_sha256>
"""

import json
import sys
from pathlib import Path

REPO_ROOT = Path(__file__).resolve().parent.parent


def main() -> int:
    if len(sys.argv) != 5:
        sys.exit(
            f"usage: {Path(sys.argv[0]).name} "
            "<formula> <version> <macos_sha256> <linux_sha256>"
        )
    formula, version, macos_sha256, linux_sha256 = sys.argv[1:5]

    meta = json.loads((REPO_ROOT / "metadata" / f"{formula}.json").read_text())
    project, prefix = meta["project"], meta["tarball_prefix"]
    macos_url = (
        f"https://github.com/mredig/{project}/releases/"
        f"download/{version}/{prefix}-macos.tar.gz"
    )
    linux_url = (
        f"https://github.com/mredig/{project}/releases/"
        f"download/{version}/{prefix}-linux.tar.gz"
    )
    install_lines = "\n".join(f'    bin.install "{b}"' for b in meta["binaries"])
    test_lines = "\n".join(
        f'    assert_predicate bin/"{b}", :exist?\n'
        f'    assert_predicate bin/"{b}", :executable?'
        for b in meta["binaries"]
    )
    out = (
        (REPO_ROOT / ".formula-template").read_text()
        .replace("{{CLASS_NAME}}", meta["class_name"])
        .replace("{{DESCRIPTION}}", meta["description"])
        .replace("{{HOMEPAGE}}", meta["homepage"])
        .replace("{{MACOS_URL}}", macos_url)
        .replace("{{MACOS_SHA256}}", macos_sha256)
        .replace("{{LINUX_URL}}", linux_url)
        .replace("{{LINUX_SHA256}}", linux_sha256)
        .replace("{{INSTALL_LINES}}", install_lines)
        .replace("{{TEST_LINES}}", test_lines)
    )
    (REPO_ROOT / f"{formula}.rb").write_text(out)
    print(out)
    return 0


if __name__ == "__main__":
    sys.exit(main())
