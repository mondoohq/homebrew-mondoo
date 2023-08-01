
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.21.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "53ff2e2b1a19c44c4a3036a8c71af4e2e6358181b26895cf23402be6315a161f"
    url "https://releases.mondoo.com/cnspec/8.21.0/cnspec_8.21.0_darwin_amd64.tar.gz"
  else
    sha256 "d7e60c82daaca80a63a5a4e24ab4dc51270b3bcc0b2b58802432e9ac306ffc81"
    url "https://releases.mondoo.com/cnspec/8.21.0/cnspec_8.21.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

