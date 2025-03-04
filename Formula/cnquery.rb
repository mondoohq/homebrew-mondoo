
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.44.0"
  

  if Hardware::CPU.intel?
    sha256 "bea5fbbbf08bd3f942b726d10debc7109cca9306b80af2152d1b04a2de0feeef"
    url "https://releases.mondoo.com/cnquery/11.44.0/cnquery_11.44.0_darwin_amd64.tar.gz"
  else
    sha256 "e5bd5ac72e942d6f28d3aec9c80f77c6b3263a4a0fd3cfcd77f2add693281e59"
    url "https://releases.mondoo.com/cnquery/11.44.0/cnquery_11.44.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

