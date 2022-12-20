
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "7.9.0"

  if Hardware::CPU.intel?
    sha256 "1dec07ee65c18515730d890412d19c29ff48623cd63b17e3b354a656e316bbd6"
    url "https://releases.mondoo.com/mondoo/7.9.0/mondoo_7.9.0_darwin_amd64.tar.gz"
  else
    sha256 "1529079d24bacb1862cae5fe2ab6a395416a11dc4a97fa2af2c4b134fb6b5b78"
    url "https://releases.mondoo.com/mondoo/7.9.0/mondoo_7.9.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

