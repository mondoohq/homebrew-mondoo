
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.1.0"

  if Hardware::CPU.intel?
    sha256 "6883f2adad9bbf7bd6ad806ab352e859e66856826e0ce98ce93f1e6c37926baa"
    url "https://releases.mondoo.com/cnspec/8.1.0/cnspec_8.1.0_darwin_amd64.tar.gz"
  else
    sha256 "4fb8847ed829925d270b89bcf862eb041313d6362fd0f988653a2cdc4e94ccd1"
    url "https://releases.mondoo.com/cnspec/8.1.0/cnspec_8.1.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

