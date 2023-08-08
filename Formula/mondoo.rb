
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.22.1"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "38ef47f440444d72ae6c3022576fcdfb805c6ee0cb158bed95e47a04c8cbbdb5"
    url "https://releases.mondoo.com/mondoo/8.22.1/mondoo_8.22.1_darwin_amd64.tar.gz"
  else
    sha256 "38ef47f440444d72ae6c3022576fcdfb805c6ee0cb158bed95e47a04c8cbbdb5"
    url "https://releases.mondoo.com/mondoo/8.22.1/mondoo_8.22.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

