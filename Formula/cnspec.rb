
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.15.1"

  if Hardware::CPU.intel?
    sha256 "e07d313998fe4127137d3c0d7c9f45d6b3301785eba26669bd00d51693c859f2"
    url "https://releases.mondoo.com/cnspec/7.15.1/cnspec_7.15.1_darwin_amd64.tar.gz"
  else
    sha256 "4f7c9a7791899b2f13fc8fc37eb52cb8b5bdd0cf4085059ae60e13a141157d63"
    url "https://releases.mondoo.com/cnspec/7.15.1/cnspec_7.15.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

