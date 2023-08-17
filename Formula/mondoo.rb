
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.23.2"
  depends_on "cnspec"

  if Hardware::CPU.intel?
    sha256 "3663a3a3d7410f33edc4a5f0c68d8ac275072e5b21c2dc60486475d6e14fffc1"
    url "https://releases.mondoo.com/mondoo/8.23.2/mondoo_8.23.2_darwin_amd64.tar.gz"
  else
    sha256 "3663a3a3d7410f33edc4a5f0c68d8ac275072e5b21c2dc60486475d6e14fffc1"
    url "https://releases.mondoo.com/mondoo/8.23.2/mondoo_8.23.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

