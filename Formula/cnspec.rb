
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.14.0"

  if Hardware::CPU.intel?
    sha256 "cb157f8be94579cfba509305503fb03b68058def16415a725db424219f43e14e"
    url "https://releases.mondoo.com/cnspec/7.14.0/cnspec_7.14.0_darwin_amd64.tar.gz"
  else
    sha256 "a2f87e0991095089dbf2e340d61af53e1fd364f4ee759b092da25be30a1e26f9"
    url "https://releases.mondoo.com/cnspec/7.14.0/cnspec_7.14.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

