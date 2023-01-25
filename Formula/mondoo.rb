
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "7.14.0"

  if Hardware::CPU.intel?
    sha256 "1f482dac7cd9aa477f6a05258ae2a5367d5fde99ab5f964323821e4edcd256cb"
    url "https://releases.mondoo.com/mondoo/7.14.0/mondoo_7.14.0_darwin_amd64.tar.gz"
  else
    sha256 "db0a70b5d278d38c3c5143865d2bac225f97c5f43eafa2315a7a090e58dcc995"
    url "https://releases.mondoo.com/mondoo/7.14.0/mondoo_7.14.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

