
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.5.0"
  

  if Hardware::CPU.intel?
    sha256 "521cc0fc9d51e523d5b1629bd27decae3e201b649b22ecabd9b9d3d7916bb27c"
    url "https://releases.mondoo.com/cnquery/10.5.0/cnquery_10.5.0_darwin_amd64.tar.gz"
  else
    sha256 "060191f484aba31b2ad430b912ab95c4e223bba364b6bf4e8fc7eb0d2821083e"
    url "https://releases.mondoo.com/cnquery/10.5.0/cnquery_10.5.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

