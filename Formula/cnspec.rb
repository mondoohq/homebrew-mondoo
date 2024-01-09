
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.14.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "fa254ecdc40c29a8246e04112455698cdba8b12883f62d2fd5d2a88d7018fe94"
    url "https://releases.mondoo.com/cnspec/9.14.0/cnspec_9.14.0_darwin_amd64.tar.gz"
  else
    sha256 "68696438675eef947e96c3d19574a7521de636000684926850d96ba58242e0fd"
    url "https://releases.mondoo.com/cnspec/9.14.0/cnspec_9.14.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

