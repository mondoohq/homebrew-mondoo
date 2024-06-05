
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.7.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "009a7a436448176d3fff5f130861710f30ec6b599d803702b474201ffc6ae860"
    url "https://releases.mondoo.com/cnspec/11.7.1/cnspec_11.7.1_darwin_amd64.tar.gz"
  else
    sha256 "a5e28f643d759c9802c014719ae723eaff7df95da2dd60014b2cfc81ff308312"
    url "https://releases.mondoo.com/cnspec/11.7.1/cnspec_11.7.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

