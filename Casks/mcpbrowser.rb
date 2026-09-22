cask "mcpbrowser" do
  version "0.11.0"
  sha256 "90340ec79d9c869888e78e6541d9f2a3f2f4c208a2659da43987fafe842b3ed8"

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
