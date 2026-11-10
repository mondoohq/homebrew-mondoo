
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "14.11.2"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "d9ad4ab0a427be01f7a4c4afe929c771a8e961628c828e46471e4e707690316c"
    url "https://releases.mondoo.com/cnspec/14.11.2/cnspec_14.11.2_darwin_amd64.tar.gz"
  else
    sha256 "1b912d857eb33c05e3b64a05304eb28dc9f98889004d9c42b7595429879156df"
    url "https://releases.mondoo.com/cnspec/14.11.2/cnspec_14.11.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

