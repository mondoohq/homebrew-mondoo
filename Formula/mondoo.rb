
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.21.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "24c22aef3f4a8a68d54cf730fed988def670161ab775e53f72307fceb58fa5e1"
    url "https://releases.mondoo.com/mondoo/8.21.0/mondoo_8.21.0_darwin_amd64.tar.gz"
  else
    sha256 "24c22aef3f4a8a68d54cf730fed988def670161ab775e53f72307fceb58fa5e1"
    url "https://releases.mondoo.com/mondoo/8.21.0/mondoo_8.21.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

