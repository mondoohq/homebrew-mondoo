
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.31.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "1a28afce3a4d87653ef62ea3d3d74b9873fbd74d7eb20060ed1fa80b2b9590c5"
    url "https://releases.mondoo.com/cnspec/11.31.0/cnspec_11.31.0_darwin_amd64.tar.gz"
  else
    sha256 "005c1060f851e148e262a622d8f643ba01aee8bb2cbdab0eb4918caf4289b192"
    url "https://releases.mondoo.com/cnspec/11.31.0/cnspec_11.31.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

