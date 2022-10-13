
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "6.19.1"

  if Hardware::CPU.intel?
    sha256 "9a1a34a6528d097760323c1eeab9736c4b67d74a06cfffd7246b03c8b22c766d"
    url "https://releases.mondoo.com/mondoo/6.19.1/mondoo_6.19.1_darwin_amd64.tar.gz"
  else
    sha256 "8f2faa71e8ec1d35323ac5746e76c47f0cbd10d644d0f9d23516020320a21c93"
    url "https://releases.mondoo.com/mondoo/6.19.1/mondoo_6.19.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

