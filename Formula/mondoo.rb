
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "5.36.1"

  if Hardware::CPU.intel?
    sha256 "12257ee450cb8685ef4c1f9e469092c2a13637edff32867d2ccbacf273dd2f6e"
    url "https://releases.mondoo.com/mondoo/5.36.1/mondoo_5.36.1_darwin_amd64.tar.gz"
  else
    sha256 "ce900042eeb5f84f17b53dd0624815f8baac3b557588d6053caa01fc86dab3a1"
    url "https://releases.mondoo.com/mondoo/5.36.1/mondoo_5.36.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

