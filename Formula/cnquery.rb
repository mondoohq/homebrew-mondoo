
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.26.0"
  

  if Hardware::CPU.intel?
    sha256 "652c3a2f7c287e55b06eb1900cfe6458d7fa377571e0814e84a0f05f64592e97"
    url "https://releases.mondoo.com/cnquery/11.26.0/cnquery_11.26.0_darwin_amd64.tar.gz"
  else
    sha256 "b6be1f37069aabe621a221bc7b45f38de5e37aa098b4338ac25ea505cfc80e72"
    url "https://releases.mondoo.com/cnquery/11.26.0/cnquery_11.26.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

