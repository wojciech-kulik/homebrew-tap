class Xcp < Formula
  desc "A fast, lightweight command-line tool for managing Xcode projects - built entirely in Swift."
  homepage "https://github.com/wojciech-kulik/XcodeProjectCLI"
  url "https://github.com/wojciech-kulik/XcodeProjectCLI/releases/download/v1.0.0/xcp.zip"
  sha256 "f6e9e98852db2c9599080cfad8eb08509e8aed071f4ff40b1910b40f0a0d11a7"
  license "MIT"

  depends_on macos: :ventura

  def install
    bin.install "xcp"
  end

  test do
    assert_match "1.0.0", shell_output("#{bin}/xcp --version")
  end
end

