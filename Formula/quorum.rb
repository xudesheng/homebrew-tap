class Quorum < Formula
  desc "CLI entrypoint for Quorum"
  homepage "https://github.com/xudesheng/quorum"
  version "0.5.7"
  license "MIT OR Apache-2.0"

  on_macos do
    url "https://github.com/xudesheng/quorum/releases/download/v0.5.7/quorum-v0.5.7-macos-universal.zip"
    sha256 "92132862170dbc15deebbf800c8b218991712dc83210f52a6b52083b8ed17609"
  end

  on_linux do
    url "https://github.com/xudesheng/quorum/releases/download/v0.5.7/quorum-v0.5.7-linux-x64-musl.tar.gz"
    sha256 "f8d8879c9f844f6c43d425cc56bc806264388d75616fc6070fcfc272d86215ef"
  end

  def install
    bin.install "quorum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quorum --version")
  end
end
