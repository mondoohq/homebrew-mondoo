
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "6.18.0-alpha3"

  if Hardware::CPU.intel?
    sha256 "3d8c20f5d0d8322bf9bca3a9a98d1cf81ad2ca5bc659641c5e702f1a1000b17b"
    url "https://releases.mondoo.com/cnspec/6.18.0-alpha3/cnspec_6.18.0-alpha3_darwin_amd64.tar.gz"
  else
    sha256 "6b6294b80b03288a64899d0a083ada0259a0b72fac6a9c7c8227ca5e3d5df7f9"
    url "https://releases.mondoo.com/cnspec/6.18.0-alpha3/cnspec_6.18.0-alpha3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

