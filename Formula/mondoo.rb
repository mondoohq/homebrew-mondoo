
class Mondoo < Formula
  desc "Mondoo"
  homepage "https://mondoo.io"
  version "5.11.0"

  if Hardware::CPU.intel?
    sha256 "fac8ff9791ae1bff7e6a782f1c82e5bbb9a61200fa8d4d3e7da4a8c4814fdb64"
    url "https://releases.mondoo.io/mondoo/5.11.0/mondoo_5.11.0_darwin_amd64.tar.gz"
  else
    sha256 "78b0e1bbe0196781facd700a54278cfc443e2316ac3566124222ad0c5b568b0d"
    url "https://releases.mondoo.io/mondoo/5.11.0/mondoo_5.11.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

