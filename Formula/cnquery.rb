
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.24.0"
  

  if Hardware::CPU.intel?
    sha256 "aae2299c0630b467d1603b80b490545b3271cd0365b540bd0d9f374b3bb7e327"
    url "https://releases.mondoo.com/cnquery/11.24.0/cnquery_11.24.0_darwin_amd64.tar.gz"
  else
    sha256 "3f419fea086e03379ac9fd5d0def32e01cc5026a996de8481a0a614de9bf0ebb"
    url "https://releases.mondoo.com/cnquery/11.24.0/cnquery_11.24.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

