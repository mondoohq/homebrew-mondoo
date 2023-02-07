
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "7.16.1"

  if Hardware::CPU.intel?
    sha256 "9e9dc69ab951b44f7eb3ced5328002010bf4be7736befbd8b0534d5aa2ff0958"
    url "https://releases.mondoo.com/mondoo/7.16.1/mondoo_7.16.1_darwin_amd64.tar.gz"
  else
    sha256 "24ae521594ef242172091ce217dab56c47017d2e52cfb3c71c3b42af9dc13dc1"
    url "https://releases.mondoo.com/mondoo/7.16.1/mondoo_7.16.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

