
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.7.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "b2e30fd472604ec80fab455b041994c77f7f5ad8619502f2f2e66199ea5e47d5"
    url "https://releases.mondoo.com/mondoo/8.7.0/mondoo_8.7.0_darwin_amd64.tar.gz"
  else
    sha256 "b2e30fd472604ec80fab455b041994c77f7f5ad8619502f2f2e66199ea5e47d5"
    url "https://releases.mondoo.com/mondoo/8.7.0/mondoo_8.7.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

