
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.6.0"
  

  if Hardware::CPU.intel?
    sha256 "2bec3b99cad8febc9852c0a2a035685f521cb5cb8a7e94217dada1f9399aa643"
    url "https://releases.mondoo.com/cnquery/10.6.0/cnquery_10.6.0_darwin_amd64.tar.gz"
  else
    sha256 "a63cfaf7683ba205c3f0850477cb928e6b8e1d288735355f7f56f3c746ef1dd5"
    url "https://releases.mondoo.com/cnquery/10.6.0/cnquery_10.6.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

