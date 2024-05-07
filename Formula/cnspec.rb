
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.3.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "50d79051e15187ccc8e322b527cb3ff2af29fea88e25b5e841a0b010ee2b45e8"
    url "https://releases.mondoo.com/cnspec/11.3.0/cnspec_11.3.0_darwin_amd64.tar.gz"
  else
    sha256 "15ecccaabeee7940b40f6ea5095e98f934c48e4b18af6c76b85df402ade86ff7"
    url "https://releases.mondoo.com/cnspec/11.3.0/cnspec_11.3.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

