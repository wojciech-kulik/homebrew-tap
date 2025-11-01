class Xcp < Formula
  desc "A fast, lightweight command-line tool for managing Xcode projects - built entirely in Swift."
  homepage "https://github.com/wojciech-kulik/XcodeProjectCLI"
  url "https://github.com/wojciech-kulik/XcodeProjectCLI/releases/download/v0.9.4/xcp.zip"
  sha256 "0ffeb517bb73f095fc7c10a35d3cd37c1f145ba07bd8a2b9d3ca28482a1191e8"
  license "MIT"

  depends_on macos: :ventura

  def install
    bin.install "xcp"
  end

  test do
    assert_match "0.9.4", shell_output("#{bin}/xcp --version")
  end
end

