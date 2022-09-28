
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "6.17.1"

  if Hardware::CPU.intel?
    sha256 "ddb228b72739d935755a37e62de24d25d4b3f753d7ccbc1f7ca7ea44b31ec972"
    url "https://releases.mondoo.com/mondoo/6.17.1/mondoo_6.17.1_darwin_amd64.tar.gz"
  else
    sha256 "fed557bb1b53ec02f5b30058ae57e6fadcada7ce2b37a2a8b3c46495dfbd21b8"
    url "https://releases.mondoo.com/mondoo/6.17.1/mondoo_6.17.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

