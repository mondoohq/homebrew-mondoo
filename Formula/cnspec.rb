
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.17.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "aa94b40c3af9ff93e421c44f0975e16a71f64a839443adddbf9835bb276c7388"
    url "https://releases.mondoo.com/cnspec/11.17.0/cnspec_11.17.0_darwin_amd64.tar.gz"
  else
    sha256 "d71b55dce5f959a20c8c8128c3bf9490c30f684f821f3839b6446560eec4f7ae"
    url "https://releases.mondoo.com/cnspec/11.17.0/cnspec_11.17.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

