
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "6.12.0"

  if Hardware::CPU.intel?
    sha256 "1bc400a126eb8887cc030d7be600de91987fb09c55b836be4f1075d003536378"
    url "https://releases.mondoo.com/mondoo/6.12.0/mondoo_6.12.0_darwin_amd64.tar.gz"
  else
    sha256 "0ab92f505db30eaf9f6960cd7d7d11edf51a187b5ca64d927f4b2fd3ab26e732"
    url "https://releases.mondoo.com/mondoo/6.12.0/mondoo_6.12.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

