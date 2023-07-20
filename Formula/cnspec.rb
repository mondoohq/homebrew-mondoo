
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.19.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "2c3e26283f77d3505d301c5f2221138df53b255b17b077478b750be7e8070901"
    url "https://releases.mondoo.com/cnspec/8.19.1/cnspec_8.19.1_darwin_amd64.tar.gz"
  else
    sha256 "850a274596ad61f05aebea46e7b7aa230fd0521bb8cbc54394d6b33e848c48e0"
    url "https://releases.mondoo.com/cnspec/8.19.1/cnspec_8.19.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

