cask "mcpbrowser" do
  version "0.14.2"
  sha256 "88854c7358c740b82ba388416403cd19448346617c8bb66f54ba4f4282f18222"

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
