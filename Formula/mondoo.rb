
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "7.5.0"

  if Hardware::CPU.intel?
    sha256 "5ac303da7a6e1bdc33e59334b0a9846d22ef3535013da2042ae99915d1f330d1"
    url "https://releases.mondoo.com/mondoo/7.5.0/mondoo_7.5.0_darwin_amd64.tar.gz"
  else
    sha256 "bb6c231f1c010af5b8bbd170105bcd1e761815e3f4dd7ded4717b944708de78e"
    url "https://releases.mondoo.com/mondoo/7.5.0/mondoo_7.5.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

