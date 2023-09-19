
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.28.3"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "493bf2da63e8ffce5262b14c85f86f4e503d141eeef3d1cf9835b89618cf27eb"
    url "https://releases.mondoo.com/cnspec/8.28.3/cnspec_8.28.3_darwin_amd64.tar.gz"
  else
    sha256 "639d1dbc14e39a027d0aa8f4b95c8934e96afd6c01afe14b9740bc5b31098e42"
    url "https://releases.mondoo.com/cnspec/8.28.3/cnspec_8.28.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

