
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "9.0.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 ""
    url "https://releases.mondoo.com/mondoo/9.0.0/mondoo_9.0.0_darwin_amd64.tar.gz"
  else
    sha256 ""
    url "https://releases.mondoo.com/mondoo/9.0.0/mondoo_9.0.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

