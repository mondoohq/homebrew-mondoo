
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "6.1.1"

  if Hardware::CPU.intel?
    sha256 "0502619963353fc925ca8f71e8ac01e82e193c06bbd3e7d2201fec455b8394a7"
    url "https://releases.mondoo.com/mondoo/6.1.1/mondoo_6.1.1_darwin_amd64.tar.gz"
  else
    sha256 "9430e1427444796316cd45c404c997e79fc5a9546a24fc159d9803042f148680"
    url "https://releases.mondoo.com/mondoo/6.1.1/mondoo_6.1.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

