
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.28.1"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "3d688c2b403e5172c7aa62d6cfb9e92997a5832a9d24e0a0fdc89a6b5c5a537e"
    url "https://releases.mondoo.com/cnspec/13.28.1/cnspec_13.28.1_darwin_amd64.tar.gz"
  else
    sha256 "4165ed4676c1706a4b7feda6398198a222959b8eac01a3995b2500319ac8745c"
    url "https://releases.mondoo.com/cnspec/13.28.1/cnspec_13.28.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

