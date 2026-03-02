class Quorum < Formula
  desc "CLI entrypoint for Quorum"
  homepage "https://github.com/xudesheng/quorum"
  version "0.6.0"
  license "MIT OR Apache-2.0"

  on_macos do
    url "https://github.com/xudesheng/quorum/releases/download/v0.6.0/quorum-v0.6.0-macos-universal.zip"
    sha256 "93740241a29e93a9921a896e6319a23b124a8ec3dfe81fbde5b0876e8ff52cfe"
  end

  on_linux do
    url "https://github.com/xudesheng/quorum/releases/download/v0.6.0/quorum-v0.6.0-linux-x64-musl.tar.gz"
    sha256 "52ccc5d1356d17c745ab41530f9de964db8abe6b4eb4f1fee7e6bc35b06f7869"
  end

  def install
    bin.install "quorum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quorum --version")
  end
end
