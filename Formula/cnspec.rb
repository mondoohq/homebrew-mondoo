
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.0.1"

  if Hardware::CPU.intel?
    sha256 "455c3f73c841c337b041df2b1c57eb1d9a6ebb151b667d6278dd4753c6361878"
    url "https://releases.mondoo.com/cnspec/7.0.1/cnspec_7.0.1_darwin_amd64.tar.gz"
  else
    sha256 "7c135a20ff618ad896c7e80200e9435e0a3873159d699c83c7dfff6a8fd5d5bc"
    url "https://releases.mondoo.com/cnspec/7.0.1/cnspec_7.0.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

