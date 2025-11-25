
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.11.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "bc25f40077b796c5764d11ca1af80a2e922d0b3b20d86a7b7d9d569cfaf2ba32"
    url "https://releases.mondoo.com/cnspec/12.11.0/cnspec_12.11.0_darwin_amd64.tar.gz"
  else
    sha256 "d00365d91f385da3043b1f2613a0dd00b6cd139d5f2a3a3d43e49b397cffa13e"
    url "https://releases.mondoo.com/cnspec/12.11.0/cnspec_12.11.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

