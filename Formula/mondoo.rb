
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "5.31.0"

  if Hardware::CPU.intel?
    sha256 "744c7f3948eb31ffdbe14b0ee0e726f0cdee3b6a2fbbd786ecdca4045e9ddabf"
    url "https://releases.mondoo.com/mondoo/5.31.0/mondoo_5.31.0_darwin_amd64.tar.gz"
  else
    sha256 "4451fabe9becba0bbef5f9a68b978ff46e762ccc16a763360fbc83b206f92ded"
    url "https://releases.mondoo.com/mondoo/5.31.0/mondoo_5.31.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

