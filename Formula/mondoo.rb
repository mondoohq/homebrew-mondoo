
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "5.37.0"

  if Hardware::CPU.intel?
    sha256 "d015f44576d4760870fb119c53dd49e67fe1a98487d5f538242ce608ac4b5a0a"
    url "https://releases.mondoo.com/mondoo/5.37.0/mondoo_5.37.0_darwin_amd64.tar.gz"
  else
    sha256 "136c60948d6754b5ac01bd1bfd356ce8d9eb6d03241e77e26e5a5ef1b8aa8c2c"
    url "https://releases.mondoo.com/mondoo/5.37.0/mondoo_5.37.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

