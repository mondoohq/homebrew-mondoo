
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.20.0"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "c5099e34dd86ce319a649d398c94f019b8dfa74090d80cba6f136a6bc103271e"
    url "https://releases.mondoo.com/mondoo/8.20.0/mondoo_8.20.0_darwin_amd64.tar.gz"
  else
    sha256 "c5099e34dd86ce319a649d398c94f019b8dfa74090d80cba6f136a6bc103271e"
    url "https://releases.mondoo.com/mondoo/8.20.0/mondoo_8.20.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

