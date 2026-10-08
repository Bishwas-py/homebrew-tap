cask "mcpbrowser" do
  version "0.12.2"
  sha256 "2a91496b8432177cb22b7008ceed1e9d3641b26a646abaeeb85b209d5cc24adf"

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
