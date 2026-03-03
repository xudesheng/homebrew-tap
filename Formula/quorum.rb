class Quorum < Formula
  desc "CLI entrypoint for Quorum"
  homepage "https://github.com/xudesheng/quorum"
  version "0.6.1"
  license "MIT OR Apache-2.0"

  on_macos do
    url "https://github.com/xudesheng/quorum/releases/download/v0.6.1/quorum-v0.6.1-macos-universal.zip"
    sha256 "63aaa8d7ec5fb5b3b74f069769640e73da6f7a08dd0e991221d5543ac67e5a9d"
  end

  on_linux do
    url "https://github.com/xudesheng/quorum/releases/download/v0.6.1/quorum-v0.6.1-linux-x64-musl.tar.gz"
    sha256 "0285c0282c84902f68386d1af627b693def8e6f4da00243d466b0fbd64278c78"
  end

  def install
    bin.install "quorum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quorum --version")
  end
end
