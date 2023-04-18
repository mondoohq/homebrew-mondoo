
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.6.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "70688240dbf2cc0686be6f975d61da2a98795ec12e7c9832d3ed705d04297647"
    url "https://releases.mondoo.com/mondoo/8.6.0/mondoo_8.6.0_darwin_amd64.tar.gz"
  else
    sha256 "70688240dbf2cc0686be6f975d61da2a98795ec12e7c9832d3ed705d04297647"
    url "https://releases.mondoo.com/mondoo/8.6.0/mondoo_8.6.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

