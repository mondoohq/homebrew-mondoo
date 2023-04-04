
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.4.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "19764d2928190bc9f031dad16402a8de1f2180440247047747b7fa19e0efb8a1"
    url "https://releases.mondoo.com/cnspec/8.4.1/cnspec_8.4.1_darwin_amd64.tar.gz"
  else
    sha256 "f4067f86893067a74b6616a2204d41d9f0768f2e65d1f98e4d9386ffaeb40fea"
    url "https://releases.mondoo.com/cnspec/8.4.1/cnspec_8.4.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

