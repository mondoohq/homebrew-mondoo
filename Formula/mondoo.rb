
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "5.34.1"

  if Hardware::CPU.intel?
    sha256 "b53486031ad6fb940ecb523acace647f0bd82ee2062f281706304e2961c1dd28"
    url "https://releases.mondoo.com/mondoo/5.34.1/mondoo_5.34.1_darwin_amd64.tar.gz"
  else
    sha256 "ec7f197b50d24b46e0750791057ab32c64f7636db3a27795628a61f24b999251"
    url "https://releases.mondoo.com/mondoo/5.34.1/mondoo_5.34.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

