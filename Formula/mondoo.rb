
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "7.10.0"

  if Hardware::CPU.intel?
    sha256 "6f3ff42b2aa392ec3661f3ab34ff59102800e87343a3ced557d9d16b68e8e007"
    url "https://releases.mondoo.com/mondoo/7.10.0/mondoo_7.10.0_darwin_amd64.tar.gz"
  else
    sha256 "9b367efdab0f11869a59e0c0d42f0ac27803331c2204fad6b9bb35a754d27b57"
    url "https://releases.mondoo.com/mondoo/7.10.0/mondoo_7.10.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

