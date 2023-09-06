
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.26.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "e4dd1c445f5df8c9586da900a351279bed987f985193bec48921fe37cfda4e4b"
    url "https://releases.mondoo.com/cnspec/8.26.0/cnspec_8.26.0_darwin_amd64.tar.gz"
  else
    sha256 "31670a67b073aa103ded6f634e745daddd49c8459ef2ed40978eb1acffb5ddc2"
    url "https://releases.mondoo.com/cnspec/8.26.0/cnspec_8.26.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

