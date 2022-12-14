
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "7.8.0"

  if Hardware::CPU.intel?
    sha256 "227e76e89de1afb86e04800468465eda9781dc21520052d38742e2af864fef9e"
    url "https://releases.mondoo.com/mondoo/7.8.0/mondoo_7.8.0_darwin_amd64.tar.gz"
  else
    sha256 "e1028559c0fc2e695424a068eddbdea3978864b101120b72044f68e91594305d"
    url "https://releases.mondoo.com/mondoo/7.8.0/mondoo_7.8.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

