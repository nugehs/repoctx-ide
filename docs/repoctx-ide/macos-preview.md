# Repoctx macOS preview

The first installable Repoctx preview is intended for a small group of trusted testers using Apple Silicon Macs. It packages the same native Trust Rail and `@nugehs/repoctx` engine validated in the repository.

## Install a preview

1. Confirm the Mac reports `arm64` when you run `uname -m`.
2. Download the newest Repoctx prerelease ZIP and its `.sha256` file from [GitHub Releases](https://github.com/nugehs/repoctx-ide/releases).
3. Keep both files in the same folder and run:

   ```bash
   shasum -a 256 -c Repoctx-macOS-arm64-*.sha256
   ```

4. Unzip the archive and drag **Repoctx** into **Applications**.
5. Control-click **Repoctx**, choose **Open**, and confirm the first-launch prompt.

Do not disable Gatekeeper. These early builds are ad-hoc signed but do not carry a verified publisher identity and are not yet notarized by Apple. The matching SHA-256 file is the integrity check for the downloaded archive.

## Start a trust workflow

1. Open a repository you are comfortable using for a preview.
2. Select the shield-shaped Repoctx view in the right sidebar.
3. Describe the change you intend to make.
4. Follow Context → Impact → Review → Gate → Audit.
5. Open the generated evidence under the repository's `.dev-context` directory.

Tieline and Bouncer remain visibly `Not configured` until their configuration files exist in the opened repository. Aiglare runs through Gate by default. The IDE never treats activity or colour alone as evidence.

## Share with a friend

Share both the ZIP and checksum file, plus a link to this guide. Tell the recipient that this is an Apple Silicon developer preview without automatic updates or Apple notarization. Do not present it as a production release.

An Intel Mac cannot run this first package. Intel and Universal downloads will follow after the Apple Silicon trial path is proven.

## Current limitations

- The preview is not Apple-notarized.
- The preview requires macOS 12 or newer.
- Updates are manual; download a newer prerelease when one is published.
- Additional extensions may require manual VSIX installation because this Code OSS distribution does not use Microsoft's extension marketplace.
- The preview is still evolving; visual polish and notarized distribution will continue after the first tester release.
