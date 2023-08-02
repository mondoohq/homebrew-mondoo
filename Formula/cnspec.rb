
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.21.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "637be2537c90f6c77fd4b91d40b00c940f12e1a729eb3c18204111bf53ab3e7a"
    url "https://releases.mondoo.com/cnspec/8.21.1/cnspec_8.21.1_darwin_amd64.tar.gz"
  else
    sha256 "0a21a75d66044b1fe56ce4421e692df1b6114c2b3b00929423eacf86ab5f5e13"
    url "https://releases.mondoo.com/cnspec/8.21.1/cnspec_8.21.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

