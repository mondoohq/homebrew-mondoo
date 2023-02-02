
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "7.15.1"

  if Hardware::CPU.intel?
    sha256 "94da8cbc3f9b6f89bb0c8ee5f10fb5cda5592cc371197ec4730e128d315fd3a4"
    url "https://releases.mondoo.com/mondoo/7.15.1/mondoo_7.15.1_darwin_amd64.tar.gz"
  else
    sha256 "cbba55995c89522e60f06f297f751f8480be363cb759755119dc4ee8d06b765d"
    url "https://releases.mondoo.com/mondoo/7.15.1/mondoo_7.15.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

