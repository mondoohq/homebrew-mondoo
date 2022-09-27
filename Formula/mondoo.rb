
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "6.17.0"

  if Hardware::CPU.intel?
    sha256 "4ba8a22816e3dd640c82c2af427d33e2d0738a16b3dfeed3f224261769cd8615"
    url "https://releases.mondoo.com/mondoo/6.17.0/mondoo_6.17.0_darwin_amd64.tar.gz"
  else
    sha256 "74b9040b3cf2c74b158e092ce6dbe0bad32907b659380e327d06d5604092ef52"
    url "https://releases.mondoo.com/mondoo/6.17.0/mondoo_6.17.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

