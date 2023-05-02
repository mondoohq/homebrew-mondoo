
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.8.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "06312fb254bc543dc3c5b5666dd0f964f854b68a5a4f73e9c2fc0c6826414fc7"
    url "https://releases.mondoo.com/mondoo/8.8.0/mondoo_8.8.0_darwin_amd64.tar.gz"
  else
    sha256 "06312fb254bc543dc3c5b5666dd0f964f854b68a5a4f73e9c2fc0c6826414fc7"
    url "https://releases.mondoo.com/mondoo/8.8.0/mondoo_8.8.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

