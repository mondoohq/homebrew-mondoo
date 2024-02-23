
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "10.4.2"
  

  if Hardware::CPU.intel?
    sha256 "7c2fef991ec9234b5c187007b1e703e30d05fe628d7dc5c3d1d4e5896d67fb1c"
    url "https://releases.mondoo.com/cnquery/10.4.2/cnquery_10.4.2_darwin_amd64.tar.gz"
  else
    sha256 "1c9ca519220673910ad1067c6d5ac776bbdf1ed4eb97493f1aa7f909ae61c7b1"
    url "https://releases.mondoo.com/cnquery/10.4.2/cnquery_10.4.2_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

