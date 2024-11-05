
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.29.0"
  

  if Hardware::CPU.intel?
    sha256 "de284ecbb6d895df74743b36af10b9ba2a3a4522b3a0370d5ab34a5761d5be26"
    url "https://releases.mondoo.com/cnquery/11.29.0/cnquery_11.29.0_darwin_amd64.tar.gz"
  else
    sha256 "19bed66caf099292da9299a5d1c4db96ea4567029ab8b4ddf0a8d24e1a1fd431"
    url "https://releases.mondoo.com/cnquery/11.29.0/cnquery_11.29.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

