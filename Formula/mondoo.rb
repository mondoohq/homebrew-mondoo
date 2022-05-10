
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "5.38.0"

  if Hardware::CPU.intel?
    sha256 "3affeef7f7971c4c78b3f4d7080433fa60d722d29cbf449717b80e8cfdeeca5c"
    url "https://releases.mondoo.com/mondoo/5.38.0/mondoo_5.38.0_darwin_amd64.tar.gz"
  else
    sha256 "a5fac23456635d0318af5541d5b93ad22e5f6286107525481665ce7b32e810d9"
    url "https://releases.mondoo.com/mondoo/5.38.0/mondoo_5.38.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

