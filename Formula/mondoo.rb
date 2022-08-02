
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "6.9.0"

  if Hardware::CPU.intel?
    sha256 "aeda25f2a103ced6a0a749ef304b4b7bd1620d73ea5e598f50a1e75de4e6e0d6"
    url "https://releases.mondoo.com/mondoo/6.9.0/mondoo_6.9.0_darwin_amd64.tar.gz"
  else
    sha256 "fc9f6f0dd3ed9dd22999ef8c38092ebba2e6361d3e4ba648d508188924a93287"
    url "https://releases.mondoo.com/mondoo/6.9.0/mondoo_6.9.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

