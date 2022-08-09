
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "6.10.0"

  if Hardware::CPU.intel?
    sha256 "f67392cd04b92c715592140aca924fd10446513f616b6a3d1f80dc72937e0ce2"
    url "https://releases.mondoo.com/mondoo/6.10.0/mondoo_6.10.0_darwin_amd64.tar.gz"
  else
    sha256 "73ae0761267538a80cd5ba99de7143b1dd54bdce28993a74ecef36ce0d235718"
    url "https://releases.mondoo.com/mondoo/6.10.0/mondoo_6.10.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

