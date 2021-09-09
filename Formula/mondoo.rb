
class Mondoo < Formula
  desc "Mondoo"
  homepage "https://mondoo.io"
  version "5.1.0"

  if Hardware::CPU.intel?
    sha256 "15884c8cd54ca634bf289a6ef97c05e4ad9348757d1f426d84a68d42d36d8d40" #amd64sha
    url "https://releases.mondoo.io/mondoo/5.1.0/mondoo_5.1.0_darwin_amd64.tar.gz"
  else
    sha256 "0dd66be7b89fffea6b57702131deac257cca20871a73c5dc1254a839001ea072" #arm64sha
    url "https://releases.mondoo.io/mondoo/5.1.0/mondoo_5.1.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

