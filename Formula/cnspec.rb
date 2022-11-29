
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.6.0"

  if Hardware::CPU.intel?
    sha256 "0ce290cea681ad9b5f888dd3b45c393c7a7375533c18589f85af86575d83e4b0"
    url "https://releases.mondoo.com/cnspec/7.6.0/cnspec_7.6.0_darwin_amd64.tar.gz"
  else
    sha256 "0d4878d98fe55c21864a843fb827a7e979d936a4064e38aaf4a88b2fbce7c758"
    url "https://releases.mondoo.com/cnspec/7.6.0/cnspec_7.6.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

