
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.16.1"

  if Hardware::CPU.intel?
    sha256 "db2d8e97a00dbbf211dadc6fd89bbf4ba72b1538bdcae45132fce823b8d3ba0a"
    url "https://releases.mondoo.com/cnspec/7.16.1/cnspec_7.16.1_darwin_amd64.tar.gz"
  else
    sha256 "2b618985f94144b85fbde986a88eb9aad4e6257df9e2db1e49111d264933dde2"
    url "https://releases.mondoo.com/cnspec/7.16.1/cnspec_7.16.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

