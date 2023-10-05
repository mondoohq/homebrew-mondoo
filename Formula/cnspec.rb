
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.0.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "e73caf8abc8efce91ac7b894a1cf9664249bbb3e89394c3d859514f692484a2c"
    url "https://releases.mondoo.com/cnspec/9.0.0/cnspec_9.0.0_darwin_amd64.tar.gz"
  else
    sha256 "aaffc96a0b90edbaa5f24cdd03f86c1cfa3b7eb608e07a77d318bed79a5f18d3"
    url "https://releases.mondoo.com/cnspec/9.0.0/cnspec_9.0.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

