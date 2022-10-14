
class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "7.0.0-alpha1"

  if Hardware::CPU.intel?
    sha256 "7bfbc17a9d1a74a30bba28074c568445d302779aa1d64dbff556b8924dc9b972"
    url "https://releases.mondoo.com/cnspec/7.0.0-alpha1/cnspec_7.0.0-alpha1_darwin_amd64.tar.gz"
  else
    sha256 "a0536d65bc737a15f22f43e542e76a5b10f24e26d48a3fea2be36273c8f2c908"
    url "https://releases.mondoo.com/cnspec/7.0.0-alpha1/cnspec_7.0.0-alpha1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

