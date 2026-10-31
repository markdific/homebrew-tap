cask "markdific" do
  version "1.5.0"
  sha256 "bbf66a2068b28ee1f7fa2fa3914beab025508b3511917b9207ec81e3624495dc"

  url "https://licenses.markdific.com/download/mac/#{version}"
  name "Markdific"
  desc "Markdown viewer and editor"
  homepage "https://markdific.com/"

  livecheck do
    url "https://markdific.com/releases/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on :macos

  app "Markdific.app"

  zap trash: [
    "~/Library/Application Support/co.zantific.markdific",
    "~/Library/Caches/co.zantific.markdific",
    "~/Library/Containers/co.zantific.markdific.quicklook",
    "~/Library/HTTPStorages/co.zantific.markdific*",
    "~/Library/Preferences/co.zantific.markdific.plist",
    "~/Library/Saved Application State/co.zantific.markdific.savedState",
    "~/Library/WebKit/co.zantific.markdific",
  ]
end
