
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.13.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "65dfd958e9effde62c9cc2f5200bb5624c1825c5e519acf19893dfbc27dbdc1c"
    url "https://releases.mondoo.com/cnspec/8.13.0/cnspec_8.13.0_darwin_amd64.tar.gz"
  else
    sha256 "c6ed815da60bd195cf1fad7b879e9731d60409aab00d36dff3c72ff6c4c49cf7"
    url "https://releases.mondoo.com/cnspec/8.13.0/cnspec_8.13.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

