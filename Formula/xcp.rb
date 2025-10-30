class Xcp < Formula
  desc "A fast, lightweight command-line tool for managing Xcode projects - built entirely in Swift."
  homepage "https://github.com/wojciech-kulik/XcodeProjectCLI"
  url "https://github.com/wojciech-kulik/XcodeProjectCLI/releases/download/v0.9.2/xcp.zip"
  sha256 "949b0cef5a1f243d8dd32a3b2140b0fbaab746afb5fd3ffc0e191b9063dba05d"
  license "MIT"

  depends_on macos: :ventura

  def install
    bin.install "xcp"
  end

  test do
    assert_match "0.9.2", shell_output("#{bin}/xcp --version")
  end
end

