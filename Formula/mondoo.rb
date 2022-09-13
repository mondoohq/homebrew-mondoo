
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "6.15.0"

  if Hardware::CPU.intel?
    sha256 "56f0f293a70927c8f8f4057648facdba701c056a5f3d289bbfb07c6fad3aa956"
    url "https://releases.mondoo.com/mondoo/6.15.0/mondoo_6.15.0_darwin_amd64.tar.gz"
  else
    sha256 "bfabce9b61f68007bc62e5fdbbddb5085b8fd831fec7fc4cd086e80672a5c822"
    url "https://releases.mondoo.com/mondoo/6.15.0/mondoo_6.15.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

