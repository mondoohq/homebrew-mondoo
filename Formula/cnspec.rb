
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.10.0"

  if Hardware::CPU.intel?
    sha256 "2416eec9468941a4d629e2ba6a9b1d18442f86eddd6a6f7374befcd60e3bbd8f"
    url "https://releases.mondoo.com/cnspec/7.10.0/cnspec_7.10.0_darwin_amd64.tar.gz"
  else
    sha256 "ddb21276163ec70d72cb5606930ac486407a09810132e84e4e0e51979434719f"
    url "https://releases.mondoo.com/cnspec/7.10.0/cnspec_7.10.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

