# Homebrew formula for NullWire-MCP, generated from packaging/nullwire-mcp.rb.tmpl
# by packaging/render.sh. Do not edit the generated file by hand.
class NullwireMcp < Formula
  desc "RAM-only traffic inspector for AI assistants that scrubs secrets first"
  homepage "https://github.com/VoxNode-ux/nullwire-mcp"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VoxNode-ux/nullwire-mcp/releases/download/v1.2.0/nullwire-darwin-arm64"
      sha256 "66f6475e8caae84687522998ff46527b2f6f5f27032a66734f320252d2ee7d33"
    end
    on_intel do
      url "https://github.com/VoxNode-ux/nullwire-mcp/releases/download/v1.2.0/nullwire-darwin-amd64"
      sha256 "14ed61870a1a094b77f6e85390ee1457734b6dff129b386d4932d9e668e7d1a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VoxNode-ux/nullwire-mcp/releases/download/v1.2.0/nullwire-linux-arm64"
      sha256 "f322503e404469bbb7c41f36330e79f8aa392982d1f6dbd824e26e21ee6f4864"
    end
    on_intel do
      url "https://github.com/VoxNode-ux/nullwire-mcp/releases/download/v1.2.0/nullwire-linux-amd64"
      sha256 "4d6915e2c6beaf006c33ae60a2c0e10813136b69c90566cd098858bb606aaaa6"
    end
  end

  def install
    # The release asset is a single static binary, not an archive.
    bin.install Dir["nullwire-*"].first => "nullwire-mcp"
  end

  def caveats
    <<~EOS
      Register NullWire with your MCP clients (look first, nothing is written):
        nullwire-mcp install --client all --dry-run
        nullwire-mcp install --client all
      `brew uninstall nullwire-mcp` does not touch your client configs.
      Run `nullwire-mcp install --uninstall --client all` first to remove the entries.
    EOS
  end

  test do
    system bin/"nullwire-mcp", "install", "--list"
  end
end