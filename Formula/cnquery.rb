
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "12.0.0"
  

  if Hardware::CPU.intel?
    sha256 "736ef143a44c9e0ce4148b862f29ee0d903ace6347233488b38205fb77adba71"
    url "https://releases.mondoo.com/cnquery/12.0.0/cnquery_12.0.0_darwin_amd64.tar.gz"
  else
    sha256 "b6a669195ee9c50d8b9b6a18f6fdafa6e1a9078843c0f8eacb7d9f7f9d8fc436"
    url "https://releases.mondoo.com/cnquery/12.0.0/cnquery_12.0.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

