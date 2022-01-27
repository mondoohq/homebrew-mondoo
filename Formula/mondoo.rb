
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.io"
  version "5.24.0"

  if Hardware::CPU.intel?
    sha256 "8184eb9dcd7d655eca380992375c7ea875f5e78cf5b89484e2ea17a5e3f8a937"
    url "https://releases.mondoo.io/mondoo/5.24.0/mondoo_5.24.0_darwin_amd64.tar.gz"
  else
    sha256 "2ff7f657cab0afcb1bf18d10fef2a0f1296447f65525131b9b7564392d257256"
    url "https://releases.mondoo.io/mondoo/5.24.0/mondoo_5.24.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

