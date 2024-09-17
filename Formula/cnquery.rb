
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.22.0"
  

  if Hardware::CPU.intel?
    sha256 "05125ed66e0a7365bf938ad6b9d34850c75bd4950559ed258e06c008e7648fd3"
    url "https://releases.mondoo.com/cnquery/11.22.0/cnquery_11.22.0_darwin_amd64.tar.gz"
  else
    sha256 "e2f9cdf00eccf4f388977ab615709b91fa4ad7f9a71ab135916fef6aa57b9344"
    url "https://releases.mondoo.com/cnquery/11.22.0/cnquery_11.22.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

