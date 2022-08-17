
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "6.11.1"

  if Hardware::CPU.intel?
    sha256 "568ac13b8d919bc9a82476c9fe326e6babf3863ae25bae61ebe0bdf38a4551ff"
    url "https://releases.mondoo.com/mondoo/6.11.1/mondoo_6.11.1_darwin_amd64.tar.gz"
  else
    sha256 "1beae388b6b06391b4a9ffbc44b80ca67fe9d964519f5eba3e380173d62d04dd"
    url "https://releases.mondoo.com/mondoo/6.11.1/mondoo_6.11.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

