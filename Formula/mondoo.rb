
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.18.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "b7e440db21a1fc40fd063761411e3b46e90576d1ca7c6dc621257f026567f519"
    url "https://releases.mondoo.com/mondoo/8.18.0/mondoo_8.18.0_darwin_amd64.tar.gz"
  else
    sha256 "b7e440db21a1fc40fd063761411e3b46e90576d1ca7c6dc621257f026567f519"
    url "https://releases.mondoo.com/mondoo/8.18.0/mondoo_8.18.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

