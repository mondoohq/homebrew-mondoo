
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "7.1.0"

  if Hardware::CPU.intel?
    sha256 "fc0b4c6987d1081ae00ad0ef7c88da1bf30d8371003236a82dbbe4183405b84d"
    url "https://releases.mondoo.com/mondoo/7.1.0/mondoo_7.1.0_darwin_amd64.tar.gz"
  else
    sha256 "066d113465eb7e26c6318747f18f67a6187d7f17c082e8f8d9075c4ae1848843"
    url "https://releases.mondoo.com/mondoo/7.1.0/mondoo_7.1.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

