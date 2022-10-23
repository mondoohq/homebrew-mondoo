
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.0.3"

  if Hardware::CPU.intel?
    sha256 "5316e67156886eef1367787c0d997d48dfc1ae338835624383cecf5b1320bd42"
    url "https://releases.mondoo.com/cnspec/7.0.3/cnspec_7.0.3_darwin_amd64.tar.gz"
  else
    sha256 "d5018042396ce2e58351773c34ac8b2f317aa0d1845d965838da790bbff9c19c"
    url "https://releases.mondoo.com/cnspec/7.0.3/cnspec_7.0.3_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

