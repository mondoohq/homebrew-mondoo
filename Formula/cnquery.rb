
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.69.1"
  

  if Hardware::CPU.intel?
    sha256 "819b179950aec2e1c886ff326252a1d0d6e87ac3865c4a3e2d76b855febc1270"
    url "https://releases.mondoo.com/cnquery/11.69.1/cnquery_11.69.1_darwin_amd64.tar.gz"
  else
    sha256 "15b997631c5b35b663d76b0788f5a97eb0d5f8acb9258da5499098950fe504d5"
    url "https://releases.mondoo.com/cnquery/11.69.1/cnquery_11.69.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

