# Homebrew tap for NullWire-MCP

Homebrew formula for [NullWire-MCP](https://github.com/VoxNode-ux/nullwire-mcp), a RAM-only traffic inspector for AI assistants that scrubs secrets before the model sees them.

## Install

```bash
brew install VoxNode-ux/nullwire/nullwire-mcp
nullwire-mcp install --client all --dry-run   # preview client changes
nullwire-mcp install --client all             # then register with your clients
```

## Update

```bash
brew update
brew upgrade nullwire-mcp
```

## Uninstall

Remove NullWire from your MCP clients first, because Homebrew doesn't touch those config files:

```bash
nullwire-mcp install --uninstall --client all
brew uninstall nullwire-mcp
```

## Supported platforms

macOS (Apple Silicon and Intel) and Linux (x86-64 and ARM64). Other platforms are available as prebuilt binaries on the [releases page](https://github.com/VoxNode-ux/nullwire-mcp/releases).

## Notes

- This tap contains only the formula. The program's source and documentation live in the main repository.
- Each version's formula is generated from the release's `SHA256SUMS.txt`. Verify a release with `gh attestation verify <file> --repo VoxNode-ux/nullwire-mcp`.
