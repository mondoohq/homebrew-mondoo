
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnquery < Formula
  desc "Cloud-Native Query - Asset Inventory Framework"
  homepage "https://mondoo.com"
  version "11.46.1"
  

  if Hardware::CPU.intel?
    sha256 "91d83ed785a60a485943b733464441d9f66bf2beab6894b20a86317f7c1a3d3a"
    url "https://releases.mondoo.com/cnquery/11.46.1/cnquery_11.46.1_darwin_amd64.tar.gz"
  else
    sha256 "7652fea8a76ab66cd88268743f32a4fb4856908aaac81c8d5b9b937edc03f11b"
    url "https://releases.mondoo.com/cnquery/11.46.1/cnquery_11.46.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnquery"
  end

  test do
    system "#{bin}/cnquery --version"
  end
end

