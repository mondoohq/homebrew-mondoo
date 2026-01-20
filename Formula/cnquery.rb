
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.19.1"
  

  if Hardware::CPU.intel?
    sha256 "590de1d9f578cc234f624c973890d06473877cbc42f46306dd979fa47d0f0f5c"
    url "https://releases.mondoo.com/cnquery/12.19.1/cnquery_12.19.1_darwin_amd64.tar.gz"
  else
    sha256 "2bc321c61d45ebbf151510f6d1977ecb43f5df8975e01990553f10e7ef5f6db2"
    url "https://releases.mondoo.com/cnquery/12.19.1/cnquery_12.19.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

