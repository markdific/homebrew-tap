cask "markdific" do
  version "1.3.2"
  sha256 "d95a32bc39fb0e12620972aa0754a11e8e57f3bfde2df3540fe7eabd57e3008e"

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
