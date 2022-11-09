
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "7.3.0"

  if Hardware::CPU.intel?
    sha256 "1870deb50dbb2e99f9c7ab28f5ccfe9550710d2b01ca5ca4a47dd2541baac491"
    url "https://releases.mondoo.com/mondoo/7.3.0/mondoo_7.3.0_darwin_amd64.tar.gz"
  else
    sha256 "0b742277f321d34d03e2d0afeb64901dbf857db3ebce6e21996bd0108c54b80c"
    url "https://releases.mondoo.com/mondoo/7.3.0/mondoo_7.3.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

