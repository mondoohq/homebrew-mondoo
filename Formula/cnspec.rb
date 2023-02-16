
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.17.2"

  if Hardware::CPU.intel?
    sha256 "9e40110c1818f23b5d0cd5697b5a9e27a38bfe2545f1ebee699f15e7c0afce4b"
    url "https://releases.mondoo.com/cnspec/7.17.2/cnspec_7.17.2_darwin_amd64.tar.gz"
  else
    sha256 "72055e48dd1281f600471204b9d64f772fd81cec79df6cb06dbc20041e741ec0"
    url "https://releases.mondoo.com/cnspec/7.17.2/cnspec_7.17.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

