
class Mondoo < Formula
  desc "Mondoo"
  homepage "https://mondoo.io"
  version "5.14.0"

  if Hardware::CPU.intel?
    sha256 "2a56f9bb90e5f2af0c7b2168c2f250d3748c2569589e4faa9d9e94cd864af3d2"
    url "https://releases.mondoo.io/mondoo/5.14.0/mondoo_5.14.0_darwin_amd64.tar.gz"
  else
    sha256 "41ada3793e83641b312b71bedd22fb5fe56ea393212e128aa0d00ecc8415a4c6"
    url "https://releases.mondoo.io/mondoo/5.14.0/mondoo_5.14.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

