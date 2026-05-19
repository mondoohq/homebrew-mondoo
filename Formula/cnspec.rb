
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.10.0"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "9f2ac20635d628eab00d510c9f5032b4a2fc4f2dc57ed4a615fb0c0273d81571"
    url "https://releases.mondoo.com/cnspec/13.10.0/cnspec_13.10.0_darwin_amd64.tar.gz"
  else
    sha256 "8cfe8e8dcad6cb5e39db49df94c48399dd67e37dd9fd52b5b222a4a75bfaaf27"
    url "https://releases.mondoo.com/cnspec/13.10.0/cnspec_13.10.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

