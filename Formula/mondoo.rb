
class Mondoo < Formula
  desc "Mondoo Client CLI for the Mondoo Policy as Code Platform"
  homepage "https://mondoo.io"
  version "5.25.0"

  if Hardware::CPU.intel?
    sha256 "692c21a0222cae909bad57ef979706aa3fdcde81a3c680c861b5cafac58c1d41"
    url "https://releases.mondoo.io/mondoo/5.25.0/mondoo_5.25.0_darwin_amd64.tar.gz"
  else
    sha256 "342a0f311b4df8b263e3cfad0a8cebf1bae2fbc88bbd549bb59c1fda00e744e2"
    url "https://releases.mondoo.io/mondoo/5.25.0/mondoo_5.25.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "mondoo"
  end

  test do
    system "#{bin}/mondoo --version"
  end
end

