
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.10.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "0fb6324ca50450e0a23e5d125bf58d072b5aa8720faa75a01212427bb1f54b9b"
    url "https://releases.mondoo.com/cnspec/12.10.0/cnspec_12.10.0_darwin_amd64.tar.gz"
  else
    sha256 "3682839554268a87827ab9391298a66b6058eea37cd61036f25542acc8f90329"
    url "https://releases.mondoo.com/cnspec/12.10.0/cnspec_12.10.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

