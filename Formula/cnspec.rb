
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.34.1"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "0af3deebbf4e102a8872d7b41f6fdf489bc532eea698326a92a14fc1bdfc8ec7"
    url "https://releases.mondoo.com/cnspec/13.34.1/cnspec_13.34.1_darwin_amd64.tar.gz"
  else
    sha256 "195abe9506f2140cecd076960faa22346e854c953f98cd69bad83e417738d946"
    url "https://releases.mondoo.com/cnspec/13.34.1/cnspec_13.34.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

