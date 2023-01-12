
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "7.12.1"

  if Hardware::CPU.intel?
    sha256 "ea5fa3f3954301e38a1986a456be3fd8763c01e1af889f811e74398c7e5b548a"
    url "https://releases.mondoo.com/mondoo/7.12.1/mondoo_7.12.1_darwin_amd64.tar.gz"
  else
    sha256 "e0f94c7f32bc0fc850a1b6ea648fbe6917fb128bba35a59276bba296b92f3726"
    url "https://releases.mondoo.com/mondoo/7.12.1/mondoo_7.12.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

