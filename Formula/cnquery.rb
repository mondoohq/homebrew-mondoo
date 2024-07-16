
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.13.0"
  

  if Hardware::CPU.intel?
    sha256 "601974dac098f316ddbbf8990cb4de8f35b642a6131cddae7cbd138874db44d8"
    url "https://releases.mondoo.com/cnquery/11.13.0/cnquery_11.13.0_darwin_amd64.tar.gz"
  else
    sha256 "71513e14eef6c83ef531146c2bfa65b8f38b356c4ab7c98f75aea31bb313875d"
    url "https://releases.mondoo.com/cnquery/11.13.0/cnquery_11.13.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

