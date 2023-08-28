
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.25.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "13756e7982751d401c9be9b6ef04d23987d5c62caa69082eea06d1a179b3b414"
    url "https://releases.mondoo.com/cnspec/8.25.0/cnspec_8.25.0_darwin_amd64.tar.gz"
  else
    sha256 "04bbec2818916cba22cb9634bb6282a7428d74843834515acdbbbe3095fbd499"
    url "https://releases.mondoo.com/cnspec/8.25.0/cnspec_8.25.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

