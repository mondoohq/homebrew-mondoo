
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.19.1"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "9660896a7e26c50d3e6e8926c81e64d80df5443703d325a5cbda9b5f37bbd9cf"
    url "https://releases.mondoo.com/mondoo/8.19.1/mondoo_8.19.1_darwin_amd64.tar.gz"
  else
    sha256 "9660896a7e26c50d3e6e8926c81e64d80df5443703d325a5cbda9b5f37bbd9cf"
    url "https://releases.mondoo.com/mondoo/8.19.1/mondoo_8.19.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

