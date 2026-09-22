cask "mcpbrowser" do
  version "0.10.0"
  sha256 "74aefbf5c9df72d57c3ac3bcbad1a52f76e6cb5751f1d96668d9d086786317a0"

  url "https://webmatrices.com/api/mcpbrowser/download?version=#{version}"
  name "MCP Browser"
  desc "Reddit, X, LinkedIn, Pinterest and more as MCP tools, using your Chrome login"
  homepage "https://webmatrices.com/mcpbrowser"

  depends_on arch: :arm64

  container type: :dmg
  app "MCP Browser.app"

  zap trash: [
    "~/Library/Application Support/mcpbrowser",
    "~/Library/Caches/pro.mcpbrowser.desktop",
    "~/Library/WebKit/pro.mcpbrowser.desktop",
  ]
end
