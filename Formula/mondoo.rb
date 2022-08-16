
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "6.11.0"

  if Hardware::CPU.intel?
    sha256 "5c1220e36e7155ca169f81efc0109e7a2cab3fe83079141b9d178adb50e16712"
    url "https://releases.mondoo.com/mondoo/6.11.0/mondoo_6.11.0_darwin_amd64.tar.gz"
  else
    sha256 "f3bcd63f67383736cec248f7424f34a0f20ca84c6e08953efa018a9dac27e8db"
    url "https://releases.mondoo.com/mondoo/6.11.0/mondoo_6.11.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

