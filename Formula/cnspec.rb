
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.46.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "6c25f09be2f7cab046c214ab764d7d0392b9f802c036ed505a6015d793477b39"
    url "https://releases.mondoo.com/cnspec/11.46.1/cnspec_11.46.1_darwin_amd64.tar.gz"
  else
    sha256 "4f60c8148e041d3cdafd0c1426f51d500d62769e8687660179bf9202d2ae7846"
    url "https://releases.mondoo.com/cnspec/11.46.1/cnspec_11.46.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

