
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "6.3.0"

  if Hardware::CPU.intel?
    sha256 "b4b6acad64c401ec0aab261a13b5658b59183ea4ba0dfcb4a44a82d0bdf42c39"
    url "https://releases.mondoo.com/mondoo/6.3.0/mondoo_6.3.0_darwin_amd64.tar.gz"
  else
    sha256 "aa41b31e4d43fdec40fc2521b450b468f10901be3ed375eb96975e13934cdae3"
    url "https://releases.mondoo.com/mondoo/6.3.0/mondoo_6.3.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

