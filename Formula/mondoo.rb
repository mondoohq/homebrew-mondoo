
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.com"
  version "6.0.1"

  if Hardware::CPU.intel?
    sha256 "ca6c9534da182c0adc77460b00bae47062d0541d6243b5b795fd5e196b03bd4f"
    url "https://releases.mondoo.com/mondoo/6.0.1/mondoo_6.0.1_darwin_amd64.tar.gz"
  else
    sha256 "64b788b43d7be0e53f1907c9546111202f5aff7f91a8fb91bdaa5cd6946b02af"
    url "https://releases.mondoo.com/mondoo/6.0.1/mondoo_6.0.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

