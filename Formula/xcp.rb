class Xcp < Formula
  desc "A fast, lightweight command-line tool for managing Xcode projects - built entirely in Swift."
  homepage "https://github.com/wojciech-kulik/XcodeProjectCLI"
  url "https://github.com/wojciech-kulik/XcodeProjectCLI/releases/download/v0.9.3/xcp.zip"
  sha256 "0467c1bf516c3eedfc16c9b45fd4b7ce49962ae777d40b8ea86d46c82cc758d9"
  license "MIT"

  depends_on macos: :ventura

  def install
    bin.install "xcp"
  end

  test do
    assert_match "0.9.3", shell_output("#{bin}/xcp --version")
  end
end

