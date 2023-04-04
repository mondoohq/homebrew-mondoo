
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.4.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "36a62b97d69b921f0291782cc8f37e587d85c553cf198a3028a2bf55b712d679"
    url "https://releases.mondoo.com/mondoo/8.4.0/mondoo_8.4.0_darwin_amd64.tar.gz"
  else
    sha256 "36a62b97d69b921f0291782cc8f37e587d85c553cf198a3028a2bf55b712d679"
    url "https://releases.mondoo.com/mondoo/8.4.0/mondoo_8.4.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

