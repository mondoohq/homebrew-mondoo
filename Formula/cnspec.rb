
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "11.51.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "3a4aa58bc132619c2caa171daed74f11ab5dc77c8ea97845c930ab04566e6646"
    url "https://releases.mondoo.com/cnspec/11.51.0/cnspec_11.51.0_darwin_amd64.tar.gz"
  else
    sha256 "19d5b5f303e283b5faac44b82eea4a94b9d76b791c8b45a7a85ab2270ca6047a"
    url "https://releases.mondoo.com/cnspec/11.51.0/cnspec_11.51.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

