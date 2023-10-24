
# Copyright (c) Mondoo, Inc.
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework "
  homepage "https://mondoo.com"
  version "9.3.0"
  depends_on "cnquery"

  if Hardware::CPU.intel?
    sha256 "a886a6c1c81cc70856465fb238f209df760b96b49ea02702948c1ea8ba5c710f"
    url "https://releases.mondoo.com/cnspec/9.3.0/cnspec_9.3.0_darwin_amd64.tar.gz"
  else
    sha256 "3245a348f71c5fd737aca9f991d361b695f6bd4c6b6def1039952be73a42ed09"
    url "https://releases.mondoo.com/cnspec/9.3.0/cnspec_9.3.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

