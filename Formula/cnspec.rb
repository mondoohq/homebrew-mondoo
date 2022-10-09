
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "6.19.0-alpha13"

  if Hardware::CPU.intel?
    sha256 "a20cab8b1052990424e280581528db3b7c60d167ca769534c3447b68c8ebb84d"
    url "https://releases.mondoo.com/cnspec/6.19.0-alpha13/cnspec_6.19.0-alpha13_darwin_amd64.tar.gz"
  else
    sha256 "20c6fdc7aee8a9b2c3f53084e02147b30e5755b567ba49c057e220a2fb210c1c"
    url "https://releases.mondoo.com/cnspec/6.19.0-alpha13/cnspec_6.19.0-alpha13_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

