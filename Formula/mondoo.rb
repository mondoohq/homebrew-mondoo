
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.10.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "587f0a63c33729a23a375850395c0bd67cd0bbaa23ca78c76dbeb65b04e7d521"
    url "https://releases.mondoo.com/mondoo/8.10.0/mondoo_8.10.0_darwin_amd64.tar.gz"
  else
    sha256 "587f0a63c33729a23a375850395c0bd67cd0bbaa23ca78c76dbeb65b04e7d521"
    url "https://releases.mondoo.com/mondoo/8.10.0/mondoo_8.10.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

