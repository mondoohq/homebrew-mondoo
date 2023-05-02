
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.8.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "d12df0dfa7bbaeccf58a0be364221f42f42c8da6ff3fabfc2a7cc4b09b8ce8be"
    url "https://releases.mondoo.com/cnspec/8.8.0/cnspec_8.8.0_darwin_amd64.tar.gz"
  else
    sha256 "452da52e7d9024f864e5de62a3cf88963f6c981a14c413b10d3277c77b441859"
    url "https://releases.mondoo.com/cnspec/8.8.0/cnspec_8.8.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

