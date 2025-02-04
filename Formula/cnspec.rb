
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.40.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "ea8f24bca621ad369e884f89cdc5f3a9fb0e1e93bfc85e28e26ee6d967a19a16"
    url "https://releases.mondoo.com/cnspec/11.40.0/cnspec_11.40.0_darwin_amd64.tar.gz"
  else
    sha256 "137b1d4b75884486264ccf7d8497f617394538e42040cd6f61745f8a482f58fc"
    url "https://releases.mondoo.com/cnspec/11.40.0/cnspec_11.40.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

