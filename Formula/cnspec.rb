
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.3.0"

  if Hardware::CPU.intel?
    sha256 "c9fb8ebaf80fd29a956ebba8a5ebcfb68a9da9decbd918b716306f1c1a57a502"
    url "https://releases.mondoo.com/cnspec/7.3.0/cnspec_7.3.0_darwin_amd64.tar.gz"
  else
    sha256 "9bfdf71ea5370d5c3ebc64cc62ba8232604a4eb3f5f342cbce0b7bc66126f429"
    url "https://releases.mondoo.com/cnspec/7.3.0/cnspec_7.3.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

