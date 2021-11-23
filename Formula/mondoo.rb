
class Mondoo < Formula
  desc "Mondoo"
  homepage "https://mondoo.io"
  version "5.15.0"

  if Hardware::CPU.intel?
    sha256 "cfdeb75b42c83ffce0fc4701d9f0750ff281d8f217ddee997e395b05e1a121a7"
    url "https://releases.mondoo.io/mondoo/5.15.0/mondoo_5.15.0_darwin_amd64.tar.gz"
  else
    sha256 "75dad89dc071d72e331be2feeb9760a19344b37553f7a7cf727708577f8813bb"
    url "https://releases.mondoo.io/mondoo/5.15.0/mondoo_5.15.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

