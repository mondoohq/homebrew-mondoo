
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.1.1"

  if Hardware::CPU.intel?
    sha256 "dbc05c887de09014c6c3be8a4fd52139287832dbb96046200f7606572c106841"
    url "https://releases.mondoo.com/mondoo/8.1.1/mondoo_8.1.1_darwin_amd64.tar.gz"
  else
    sha256 "389d8b3189e47345e3582f71f4f1372fbed06e1180f3b30f9774efc8acef6c9c"
    url "https://releases.mondoo.com/mondoo/8.1.1/mondoo_8.1.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

