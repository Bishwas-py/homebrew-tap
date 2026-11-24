cask "mcpbrowser" do
  version "0.14.3"
  sha256 "2aee0f3d06e92cd6119da5a3cf9e12449f3a4472a8791d165b2355ffbcdd7b0b"

  url "https://webmatrices.com/api/mcpbrowser/download?version=#{version}"
  name "MCP Browser"
  desc "Reddit, X, LinkedIn, Pinterest and more as MCP tools, using your Chrome login"
  homepage "https://webmatrices.com/mcpbrowser"

  depends_on arch: :arm64
  depends_on :macos
  container type: :dmg

  app "MCP Browser.app"

  zap trash: [
    "~/Library/Application Support/mcpbrowser",
    "~/Library/Caches/pro.mcpbrowser.desktop",
    "~/Library/WebKit/pro.mcpbrowser.desktop",
  ]
end
