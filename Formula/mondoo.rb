
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.19.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "8391c5b04309c0e28390874bbe8217c47479bba7fedad34a9e57304502956ad7"
    url "https://releases.mondoo.com/mondoo/8.19.0/mondoo_8.19.0_darwin_amd64.tar.gz"
  else
    sha256 "8391c5b04309c0e28390874bbe8217c47479bba7fedad34a9e57304502956ad7"
    url "https://releases.mondoo.com/mondoo/8.19.0/mondoo_8.19.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

