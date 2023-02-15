
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "7.17.1"

  if Hardware::CPU.intel?
    sha256 ""
    url "https://releases.mondoo.com/mondoo/7.17.1/mondoo_7.17.1_darwin_amd64.tar.gz"
  else
    sha256 ""
    url "https://releases.mondoo.com/mondoo/7.17.1/mondoo_7.17.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

