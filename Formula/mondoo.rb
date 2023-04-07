
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.4.2"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "300055ac86ac7a679556facfed5204d7654df74ed2931eb14f46eccab157e9a8"
    url "https://releases.mondoo.com/mondoo/8.4.2/mondoo_8.4.2_darwin_amd64.tar.gz"
  else
    sha256 "300055ac86ac7a679556facfed5204d7654df74ed2931eb14f46eccab157e9a8"
    url "https://releases.mondoo.com/mondoo/8.4.2/mondoo_8.4.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

