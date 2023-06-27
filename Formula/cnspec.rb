
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.16.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "147718c22b5b92a726d6c677fc8fec4cb6e4101999b6adfca10854cb4ba00d5e"
    url "https://releases.mondoo.com/cnspec/8.16.0/cnspec_8.16.0_darwin_amd64.tar.gz"
  else
    sha256 "888406ee6d5eec106c45fb28a478482b16c438627e1b7615afec4b51df1abdce"
    url "https://releases.mondoo.com/cnspec/8.16.0/cnspec_8.16.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

