class Quorum < Formula
  desc "CLI entrypoint for Quorum"
  homepage "https://github.com/xudesheng/quorum"
  version "0.5.6"
  license "MIT OR Apache-2.0"

  on_macos do
    url "https://github.com/xudesheng/quorum/releases/download/v0.5.6/quorum-v0.5.6-macos-universal.zip"
    sha256 "353170ffac7d2de46fe73339dbb6032e641540ddfc5eee2c222f2b23756798bc"
  end

  on_linux do
    url "https://github.com/xudesheng/quorum/releases/download/v0.5.6/quorum-v0.5.6-linux-x64-musl.tar.gz"
    sha256 "680e5cf89228fafb510410c434670985fca76b54d6a61d92da9afee3d9feeca4"
  end

  def install
    bin.install "quorum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quorum --version")
  end
end
