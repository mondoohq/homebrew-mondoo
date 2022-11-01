
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.2.0"

  if Hardware::CPU.intel?
    sha256 "24bad50ba254565232febbabb0c2d0a638171593d4a04bca7eb0e82a472bbffc"
    url "https://releases.mondoo.com/cnspec/7.2.0/cnspec_7.2.0_darwin_amd64.tar.gz"
  else
    sha256 "f8de02e6260ff589d5f091ccae671d2cfe21af371471054174bd5d09234c8a88"
    url "https://releases.mondoo.com/cnspec/7.2.0/cnspec_7.2.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

