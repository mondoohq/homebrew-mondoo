
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.0.0"

  if Hardware::CPU.intel?
    sha256 "2a7f93d8c62bd76309a28ef66367c2db6e8bfb5fc59713c4649c9c6e2b55575a"
    url "https://releases.mondoo.com/cnspec/7.0.0/cnspec_7.0.0_darwin_amd64.tar.gz"
  else
    sha256 "9857f8a39904f4eb3a1b127401350856af29a2ecbc97bf4a09676724cef9d3ab"
    url "https://releases.mondoo.com/cnspec/7.0.0/cnspec_7.0.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

