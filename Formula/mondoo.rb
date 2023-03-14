
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "8.1.0"

  if Hardware::CPU.intel?
    sha256 "aa635776057cab2459f90c8686a7a85abc8203b5d248d577edee780f89134202"
    url "https://releases.mondoo.com/mondoo/8.1.0/mondoo_8.1.0_darwin_amd64.tar.gz"
  else
    sha256 "4323ecbce74af5b9da2aa8ae9970fcd77365a133befaef3604a8506ce5c2eade"
    url "https://releases.mondoo.com/mondoo/8.1.0/mondoo_8.1.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

