
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.0.0-alpha0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 ""
    url "https://releases.mondoo.com/cnspec/9.0.0-alpha0/cnspec_9.0.0-alpha0_darwin_amd64.tar.gz"
  else
    sha256 ""
    url "https://releases.mondoo.com/cnspec/9.0.0-alpha0/cnspec_9.0.0-alpha0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

