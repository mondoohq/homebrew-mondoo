
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.0.0"
  

  if Hardware::CPU.intel?
    sha256 "8ce1b73d0b3df72e2d213f410d331bb82606659186277235f8500ca8de305fd1"
    url "https://releases.mondoo.com/cnquery/11.0.0/cnquery_11.0.0_darwin_amd64.tar.gz"
  else
    sha256 "057fe5c2977e401132fcd6b72b5a8d61562ef4aeaaadc8afbbe9a547056a8727"
    url "https://releases.mondoo.com/cnquery/11.0.0/cnquery_11.0.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

