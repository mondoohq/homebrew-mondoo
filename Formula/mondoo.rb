
class Mondoo < Formula
  desc "Mondoo"
  homepage "https://mondoo.io"
  version "5.10.0"

  if Hardware::CPU.intel?
    sha256 "22ab4a5da5981d9b76500c1535619173d64f0847e86cd5a952b9ddf0f418d4e3"
    url "https://releases.mondoo.io/mondoo/5.10.0/mondoo_5.10.0_darwin_amd64.tar.gz"
  else
    sha256 "ff29c56930046f8e51f3e56d5c94c66e21d02e7099464f6a501f3dc3bcb4b021"
    url "https://releases.mondoo.io/mondoo/5.10.0/mondoo_5.10.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

