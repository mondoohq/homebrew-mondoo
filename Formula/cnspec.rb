
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "12.12.1"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "0819cce4ddaa2eeaea87c299fba831dfd223393188d8314d8912c375dc39180f"
    url "https://releases.mondoo.com/cnspec/12.12.1/cnspec_12.12.1_darwin_amd64.tar.gz"
  else
    sha256 "e0ff626da8a5542969f32a16c15c74731e2d44226f7dd4abbe3c0bb9800123f7"
    url "https://releases.mondoo.com/cnspec/12.12.1/cnspec_12.12.1_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

