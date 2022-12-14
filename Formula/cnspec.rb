
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.8.0"

  if Hardware::CPU.intel?
    sha256 "e640628025bcc940c1b7cef49399d19bc29ed56083193e578a54b52c143977d5"
    url "https://releases.mondoo.com/cnspec/7.8.0/cnspec_7.8.0_darwin_amd64.tar.gz"
  else
    sha256 "171ab91178c5cf752778528366378289836baf38d402e55be3eaa1801305b56b"
    url "https://releases.mondoo.com/cnspec/7.8.0/cnspec_7.8.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

