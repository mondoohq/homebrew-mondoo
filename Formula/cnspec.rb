
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.5.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "9fdcf6416db736783a653831c72abd1c75b95bcd344235fb8e2f0dc98a6d822e"
    url "https://releases.mondoo.com/cnspec/8.5.0/cnspec_8.5.0_darwin_amd64.tar.gz"
  else
    sha256 "2ca2d7e1c93c2840a55828f5a121481c5dc35f9f45d7740d71878585a86f5408"
    url "https://releases.mondoo.com/cnspec/8.5.0/cnspec_8.5.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

