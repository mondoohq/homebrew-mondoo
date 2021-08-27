class Mondoo < Formula
  # Update these values as needed as new versions are released
  current_version="4.17.1"
  if Hardware::CPU.intel?
    sha256 "b39b3769da64f2a021f1efbaf657cc91dd46203955fadc1663050a6c33c43476" #amd64sha
    url "https://releases.mondoo.io/mondoo/#{current_version}/mondoo_#{current_version}_darwin_amd64.tar.gz"
  else
    sha256 "f70d45d9ad1591e61e484b0e64394ba341afc9fa68f96563acb04531588df2bf" #arm64sha
    url "https://releases.mondoo.io/mondoo/#{current_version}/mondoo_#{current_version}_darwin_arm64.tar.gz"
  end

  desc "Mondoo Labs"
  homepage "https://mondoo.io"
  version current_version

  def install
    bin.install "mondoo"
  end

  test do
    system bin/"mondoo", "version"
  end
end
