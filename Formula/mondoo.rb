
class Mondoo < Formula
  desc "Mondoo"
  homepage "https://mondoo.io"
  version "5.5.2"

  if Hardware::CPU.intel?
    sha256 "2a94d051a6c7450c2b0f24686d3467461d04ec16582782b8da02345a4a5d4f8e"
    url "https://releases.mondoo.io/mondoo/5.5.2/mondoo_5.5.2_darwin_amd64.tar.gz"
  else
    sha256 "067537d95b4301f46b998268b34a6b566e6a3d78093a0af838de9a3672e9b9ed"
    url "https://releases.mondoo.io/mondoo/5.5.2/mondoo_5.5.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

