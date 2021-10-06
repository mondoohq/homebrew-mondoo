
class Mondoo < Formula
  desc "Mondoo"
  homepage "https://mondoo.io"
  version "5.8.0"

  if Hardware::CPU.intel?
    sha256 "469004e5d004267c34a9869e49c11c543c5d592a4a5f68b12848326129a4163a"
    url "https://releases.mondoo.io/mondoo/5.8.0/mondoo_5.8.0_darwin_amd64.tar.gz"
  else
    sha256 "b2b1ce50f9e603df525269ad2c06f7b5bbafbdea02c1406ee0c9f3f81b50bb2b"
    url "https://releases.mondoo.io/mondoo/5.8.0/mondoo_5.8.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

