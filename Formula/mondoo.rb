
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.28.3"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "7eb3920f9ac50563326cee8e2a37c4aec0269bcb10ee4c17ec5c1e8724cc1aba"
    url "https://releases.mondoo.com/mondoo/8.28.3/mondoo_8.28.3_darwin_amd64.tar.gz"
  else
    sha256 "7eb3920f9ac50563326cee8e2a37c4aec0269bcb10ee4c17ec5c1e8724cc1aba"
    url "https://releases.mondoo.com/mondoo/8.28.3/mondoo_8.28.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

