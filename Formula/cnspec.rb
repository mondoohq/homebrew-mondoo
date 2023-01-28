
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.14.2"

  if Hardware::CPU.intel?
    sha256 "c2f0c12b81a4ca1faf3c5b76ab0115bb4682da12adac59da30fb2074e58c8b71"
    url "https://releases.mondoo.com/cnspec/7.14.2/cnspec_7.14.2_darwin_amd64.tar.gz"
  else
    sha256 "d18c24c96dbdb36bff3c560caa53dee7db9ff7b2048f172d8ff80d8b0bf84e1c"
    url "https://releases.mondoo.com/cnspec/7.14.2/cnspec_7.14.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

