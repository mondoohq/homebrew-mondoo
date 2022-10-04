
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "6.18.0"

  if Hardware::CPU.intel?
    sha256 "0f43f406450b390989b7d7e529af5230d708972db65502e025cf5eaf7719b23a"
    url "https://releases.mondoo.com/mondoo/6.18.0/mondoo_6.18.0_darwin_amd64.tar.gz"
  else
    sha256 "deae5b861f4597de46670e78c48a86cbf307610d610c4ad777616f013a1d84ad"
    url "https://releases.mondoo.com/mondoo/6.18.0/mondoo_6.18.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

