
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "5.39.0"

  if Hardware::CPU.intel?
    sha256 "b2bf482a95f96d34b3d2545e40661b8b02c8ed713744f9f7420c666f53d352ec"
    url "https://releases.mondoo.com/mondoo/5.39.0/mondoo_5.39.0_darwin_amd64.tar.gz"
  else
    sha256 "bf15259d6e53fe6e72a1587d1bb40296b48bbe29b5ee0b396d698f604c709757"
    url "https://releases.mondoo.com/mondoo/5.39.0/mondoo_5.39.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

