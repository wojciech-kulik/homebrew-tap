class Xcp < Formula
  desc "A fast, lightweight command-line tool for managing Xcode projects - built entirely in Swift."
  homepage "https://github.com/wojciech-kulik/XcodeProjectCLI"
  url "https://github.com/wojciech-kulik/XcodeProjectCLI/releases/download/v0.9.1/xcp.zip"
  sha256 "308d3514d54743d12368a1d126d16f3e4af8b550a488f2291126bb7e1cb48156"
  license "MIT"

  depends_on macos: :ventura

  def install
    bin.install "xcp"
  end

  test do
    assert_match "0.9.1", shell_output("#{bin}/xcp --version")
  end
end

