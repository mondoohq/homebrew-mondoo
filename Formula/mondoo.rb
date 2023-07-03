
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.17.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "44c3c90876fddcbb5ff8ae09bc011c5aff60df8eaa6340b098f410904ed93934"
    url "https://releases.mondoo.com/mondoo/8.17.0/mondoo_8.17.0_darwin_amd64.tar.gz"
  else
    sha256 "44c3c90876fddcbb5ff8ae09bc011c5aff60df8eaa6340b098f410904ed93934"
    url "https://releases.mondoo.com/mondoo/8.17.0/mondoo_8.17.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

