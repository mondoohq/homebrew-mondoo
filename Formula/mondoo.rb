
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "7.2.0"

  if Hardware::CPU.intel?
    sha256 "584278a52426008f78ece115e1c6ae40c44d218f0e8b0cd68a38e63aa2b58db3"
    url "https://releases.mondoo.com/mondoo/7.2.0/mondoo_7.2.0_darwin_amd64.tar.gz"
  else
    sha256 "58bf3a93122ff2cb54101e7984cdef2685b1fb44e86b273e03263ed0dcf5ac78"
    url "https://releases.mondoo.com/mondoo/7.2.0/mondoo_7.2.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

