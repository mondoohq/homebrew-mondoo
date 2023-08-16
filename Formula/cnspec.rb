
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.23.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "402ac118ad2ddde1702134ea4c691e902ad31e356783b6f380cceb6000c02468"
    url "https://releases.mondoo.com/cnspec/8.23.1/cnspec_8.23.1_darwin_amd64.tar.gz"
  else
    sha256 "1a542069bf6c30a4112df4362706e26d637645f1634aa9df5cb361f46f10aa6f"
    url "https://releases.mondoo.com/cnspec/8.23.1/cnspec_8.23.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

