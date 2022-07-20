
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "6.7.1"

  if Hardware::CPU.intel?
    sha256 "fcec33485df4e3c54e12227f7875cf004175b9247d5ae347c6edbec9843526fa"
    url "https://releases.mondoo.com/mondoo/6.7.1/mondoo_6.7.1_darwin_amd64.tar.gz"
  else
    sha256 "64a41ee7e14f85e2cac363de775a1486cd04500b8385292152f662544af9c291"
    url "https://releases.mondoo.com/mondoo/6.7.1/mondoo_6.7.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

