
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.1.1"

  if Hardware::CPU.intel?
    sha256 "6af0a1839ea4d93f03a9466bf4405408fee4cb5cae70789a1f6af9c622670e35"
    url "https://releases.mondoo.com/cnspec/8.1.1/cnspec_8.1.1_darwin_amd64.tar.gz"
  else
    sha256 "5cfc5a490fcea46d1150de7441e29843439dc4dd5848060544b3761b4bb39b62"
    url "https://releases.mondoo.com/cnspec/8.1.1/cnspec_8.1.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

