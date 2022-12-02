
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "7.6.1"

  if Hardware::CPU.intel?
    sha256 "81c8e194a8d284968ac8d4d8c862473ea788089861133c1000544603af9b0c2c"
    url "https://releases.mondoo.com/mondoo/7.6.1/mondoo_7.6.1_darwin_amd64.tar.gz"
  else
    sha256 "d74e9ff0f84ec19744d9c451be7c598e864f999442c0b62797ee8aed5cc89f88"
    url "https://releases.mondoo.com/mondoo/7.6.1/mondoo_7.6.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

