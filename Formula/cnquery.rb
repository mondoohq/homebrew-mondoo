
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "9.5.0"
  

  if Hardware::CPU.intel?
    sha256 "5ab39e76b1008c830ba324490ae6804837563a74ab7704a2cd3a0b3c0dc9a5a3"
    url "https://releases.mondoo.com/cnquery/9.5.0/cnquery_9.5.0_darwin_amd64.tar.gz"
  else
    sha256 "76176fdfb388b56e99c7f7b52bf9058df55009b61891ce1db8e74294fe047980"
    url "https://releases.mondoo.com/cnquery/9.5.0/cnquery_9.5.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

