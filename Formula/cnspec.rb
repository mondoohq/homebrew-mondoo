
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.17.0"

  if Hardware::CPU.intel?
    sha256 "b5ce7a9179831fdef2ccc725d698e910a65b33aeb0e473082c81976d1b59e3b4"
    url "https://releases.mondoo.com/cnspec/7.17.0/cnspec_7.17.0_darwin_amd64.tar.gz"
  else
    sha256 "d6c3ebe75faf038944dff57ab4b52956d4b0246e871e54c1c846ba7b6076a764"
    url "https://releases.mondoo.com/cnspec/7.17.0/cnspec_7.17.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

