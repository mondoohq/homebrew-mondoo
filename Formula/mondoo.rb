
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "5.38.4"

  if Hardware::CPU.intel?
    sha256 "fc4f709d96a8d1ea8c10bc80b9ae5a7c6372b57fb5fdcc7c36b275092e0b7f53"
    url "https://releases.mondoo.com/mondoo/5.38.4/mondoo_5.38.4_darwin_amd64.tar.gz"
  else
    sha256 "8c6c9a22edcf6dbe731fbce21bd030a7647cf6f9bcebbad19973a40012da73b2"
    url "https://releases.mondoo.com/mondoo/5.38.4/mondoo_5.38.4_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

