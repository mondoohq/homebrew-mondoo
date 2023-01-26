
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.14.1"

  if Hardware::CPU.intel?
    sha256 "1ee7177399a3a974ab765d07cc60265b715354bb6e64a1282f63d77fb4059768"
    url "https://releases.mondoo.com/cnspec/7.14.1/cnspec_7.14.1_darwin_amd64.tar.gz"
  else
    sha256 "a1284c76cf1c6c4bec6b16ecb25bb5399032665aa912eff6c4126150e6c21ea1"
    url "https://releases.mondoo.com/cnspec/7.14.1/cnspec_7.14.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

