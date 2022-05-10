
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "5.38.1"

  if Hardware::CPU.intel?
    sha256 "b6bd2a154ef9b3545f96bec062f979be31f07bfa85206153728cc4905aa7b9f1"
    url "https://releases.mondoo.com/mondoo/5.38.1/mondoo_5.38.1_darwin_amd64.tar.gz"
  else
    sha256 "381008a21556a4a950a7ceab08cc017c8b133f8c06082c4ba954cc3d8ed90b4e"
    url "https://releases.mondoo.com/mondoo/5.38.1/mondoo_5.38.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

