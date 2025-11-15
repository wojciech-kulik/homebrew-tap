class Xcp < Formula
  desc "A fast, lightweight command-line tool for managing Xcode projects - built entirely in Swift."
  homepage "https://github.com/wojciech-kulik/XcodeProjectCLI"
  url "https://github.com/wojciech-kulik/XcodeProjectCLI/releases/download/v1.1.0/xcp.zip"
  sha256 "0b7a4cfbfa6720294c1f8caa269b9b490d5e0af82f147a80032aeac1f163cfd6"
  license "MIT"

  depends_on macos: :ventura

  def install
    bin.install "xcp"
  end

  test do
    assert_match "1.1.0", shell_output("#{bin}/xcp --version")
  end
end

