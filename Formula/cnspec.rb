
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.24.3"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "36d2e528eeac1f957ad5f23e33aa6a30c0c0271c02fb02f3a13da34cb59671d3"
    url "https://releases.mondoo.com/cnspec/8.24.3/cnspec_8.24.3_darwin_amd64.tar.gz"
  else
    sha256 "1873189398e97800473f1e54d68856be7e0bac966a0f2193d28ef4aa93e0b74c"
    url "https://releases.mondoo.com/cnspec/8.24.3/cnspec_8.24.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

