
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "6.16.0"

  if Hardware::CPU.intel?
    sha256 "34920a900e6e845975ac558af8ad4580a3ea42d8fcdb2da1432aa916f740d9ed"
    url "https://releases.mondoo.com/mondoo/6.16.0/mondoo_6.16.0_darwin_amd64.tar.gz"
  else
    sha256 "303c7c878c6890f584e55ff996a0b1280ad443b2aa83fca4e13c722819ef4332"
    url "https://releases.mondoo.com/mondoo/6.16.0/mondoo_6.16.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

