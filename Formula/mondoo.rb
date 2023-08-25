
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.24.2"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "9dc469f71ee060a2627372eea77c7848cd80ed9a939126be149b54cccaadc4db"
    url "https://releases.mondoo.com/mondoo/8.24.2/mondoo_8.24.2_darwin_amd64.tar.gz"
  else
    sha256 "9dc469f71ee060a2627372eea77c7848cd80ed9a939126be149b54cccaadc4db"
    url "https://releases.mondoo.com/mondoo/8.24.2/mondoo_8.24.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

