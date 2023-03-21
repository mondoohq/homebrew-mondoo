
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.2.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "d655af01736165dcc47a4e714c958ebadd8f90d43ebdc85796ea7e68e175ab76"
    url "https://releases.mondoo.com/mondoo/8.2.0/mondoo_8.2.0_darwin_amd64.tar.gz"
  else
    sha256 "10cfa3baa1f690e098c3af9707fc00ce29861f982a119446762e4afa5d029525"
    url "https://releases.mondoo.com/mondoo/8.2.0/mondoo_8.2.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

