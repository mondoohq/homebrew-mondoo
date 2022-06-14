
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "6.2.0"

  if Hardware::CPU.intel?
    sha256 "09bcd15e6fbb0799e77980583b7836a7ae62c9dce236a624baecead67f1b0b3d"
    url "https://releases.mondoo.com/mondoo/6.2.0/mondoo_6.2.0_darwin_amd64.tar.gz"
  else
    sha256 "2dfbc548286cc9319ac8da0be0c22d7937b77120f905e03d1ba577b14a95038d"
    url "https://releases.mondoo.com/mondoo/6.2.0/mondoo_6.2.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

