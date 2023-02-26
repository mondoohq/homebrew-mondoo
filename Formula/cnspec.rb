
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.18.2"

  if Hardware::CPU.intel?
    sha256 "8034a255cb563a2fff3d86aa6ccc616d82b62882c878af836c15d30e64617585"
    url "https://releases.mondoo.com/cnspec/7.18.2/cnspec_7.18.2_darwin_amd64.tar.gz"
  else
    sha256 "5bc2751f67a6cff351ef098bf2e29630e0d86e26e14b906e5b92e76388b3c036"
    url "https://releases.mondoo.com/cnspec/7.18.2/cnspec_7.18.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

