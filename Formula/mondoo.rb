
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "6.7.0"

  if Hardware::CPU.intel?
    sha256 "76dd7fd2623875aaa83e8fd2b7f5d64ddc17d7a0a7dab5a62bc9c3ec38266a73"
    url "https://releases.mondoo.com/mondoo/6.7.0/mondoo_6.7.0_darwin_amd64.tar.gz"
  else
    sha256 "313a90844fe9b73bee5ec82eb4dc3f630a94093b7320697658be2b2895959f6b"
    url "https://releases.mondoo.com/mondoo/6.7.0/mondoo_6.7.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

