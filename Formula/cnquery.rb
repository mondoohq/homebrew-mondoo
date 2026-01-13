
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.18.0"
  

  if Hardware::CPU.intel?
    sha256 "f50daa2b81142c98c8fba145451909f16a5f8f98b7b9f7ad0c0610368d5c79e2"
    url "https://releases.mondoo.com/cnquery/12.18.0/cnquery_12.18.0_darwin_amd64.tar.gz"
  else
    sha256 "a7588e451efcd6a643b3cf05232b59f9f5342e4480b0a74c72b4f8d1f736950e"
    url "https://releases.mondoo.com/cnquery/12.18.0/cnquery_12.18.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

