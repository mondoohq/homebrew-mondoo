
class Mondoo < Formula
  desc "Mondoo"
  homepage "https://mondoo.io"
  version "5.2.0"

  if Hardware::CPU.intel?
    sha256 "29d262a827d6032378fc3efc057b38cff37dcb007906276a0d583f2ea46964ac"
    url "https://releases.mondoo.io/mondoo/5.2.0/mondoo_5.2.0_darwin_amd64.tar.gz"
  else
    sha256 "026017d3f161a7f99b9570d7d7a4dfbfab51ec89c24cc5478aee70d982701439"
    url "https://releases.mondoo.io/mondoo/5.2.0/mondoo_5.2.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

