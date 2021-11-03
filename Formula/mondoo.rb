
class Mondoo < Formula
  desc "Mondoo"
  homepage "https://mondoo.io"
  version "5.12.2"

  if Hardware::CPU.intel?
    sha256 "979e7cdd8877b7bb2813a37fa83d9e42a2750916978c2d8ad1594b69e4429497"
    url "https://releases.mondoo.io/mondoo/5.12.2/mondoo_5.12.2_darwin_amd64.tar.gz"
  else
    sha256 "eaf5e0239a2f425bee5252aac174e9c34df3f460bc7690494f0346dcd39d5e59"
    url "https://releases.mondoo.io/mondoo/5.12.2/mondoo_5.12.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

