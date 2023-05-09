
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "8.9.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "09d9c33c256da3b9741d56cf8363e66f60a424b284e23cdc20548281dbb9e5b5"
    url "https://releases.mondoo.com/cnspec/8.9.0/cnspec_8.9.0_darwin_amd64.tar.gz"
  else
    sha256 "23b9387bbb4a0094e4143cdc0bf7dc85b1e36f5dc6be4c8285a174422da6c849"
    url "https://releases.mondoo.com/cnspec/8.9.0/cnspec_8.9.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

