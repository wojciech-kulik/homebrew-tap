class Xcp < Formula
  desc "Fast, lightweight command-line tool for managing Xcode projects - built in Swift"
  homepage "https://github.com/wojciech-kulik/XcodeProjectCLI"
  url "https://github.com/wojciech-kulik/XcodeProjectCLI/releases/download/v1.2.0/xcp.zip"
  sha256 "7157020918552a490e63089c4f33b0e47dd4752a567e1a142dac4334694df428"
  license "MIT"

  depends_on macos: :ventura

  def install
    bin.install "xcp"
  end

  test do
    assert_match "1.2.0", shell_output("#{bin}/xcp --version")
  end
end
