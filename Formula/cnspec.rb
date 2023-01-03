
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.11.0"

  if Hardware::CPU.intel?
    sha256 "bb133aba14c9f46aea524c48c2ecf351f28fce8588c9cd32565068941b6ecd7e"
    url "https://releases.mondoo.com/cnspec/7.11.0/cnspec_7.11.0_darwin_amd64.tar.gz"
  else
    sha256 "774e6c40b3fa47de30c85f3c39688b313b183f234f2ef043d2b42f6ddc69a116"
    url "https://releases.mondoo.com/cnspec/7.11.0/cnspec_7.11.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

