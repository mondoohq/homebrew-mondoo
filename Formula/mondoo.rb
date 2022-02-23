
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.io"
  version "5.28.0"

  if Hardware::CPU.intel?
    sha256 "e4da4fde600eb40761cf0751c8c5c24f317c06fe85c4620c8fd5eb7f66d4f21f"
    url "https://releases.mondoo.io/mondoo/5.28.0/mondoo_5.28.0_darwin_amd64.tar.gz"
  else
    sha256 "7b48c82d886bf89029a4ad6b14cd1ae01214649b40df5157627368d0e3fdc72e"
    url "https://releases.mondoo.io/mondoo/5.28.0/mondoo_5.28.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

