
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.4.1"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "6afc6367489116e4a7e9982d39c22d4010add90bb8315f237d0eb87a8097e79f"
    url "https://releases.mondoo.com/mondoo/8.4.1/mondoo_8.4.1_darwin_amd64.tar.gz"
  else
    sha256 "6afc6367489116e4a7e9982d39c22d4010add90bb8315f237d0eb87a8097e79f"
    url "https://releases.mondoo.com/mondoo/8.4.1/mondoo_8.4.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

