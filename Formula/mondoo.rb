
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.9.1"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "577cf60b597aaebfe19a9ea61138e33d0b0bfbbfde7cc4304557f3451186237d"
    url "https://releases.mondoo.com/mondoo/8.9.1/mondoo_8.9.1_darwin_amd64.tar.gz"
  else
    sha256 "577cf60b597aaebfe19a9ea61138e33d0b0bfbbfde7cc4304557f3451186237d"
    url "https://releases.mondoo.com/mondoo/8.9.1/mondoo_8.9.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

