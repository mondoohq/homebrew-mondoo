
# Copyright Mondoo, Inc. 2026
# SPDX-License-Identifier: BUSL-1.1

class Cnspec < Formula
  desc "Cloud-Native Security and Policy Framework"
  homepage "https://mondoo.com"
  version "13.37.0"
  depends_on "mql"

  if Hardware::CPU.intel?
    sha256 "29f5407b4499d9fae3a5b7985aa349c7b0899551813a83b68e1f1b413590cd31"
    url "https://releases.mondoo.com/cnspec/13.37.0/cnspec_13.37.0_darwin_amd64.tar.gz"
  else
    sha256 "f65f51e1c8647b49286828e2ce826eba435ed7c6e1edd286d776f6339040a506"
    url "https://releases.mondoo.com/cnspec/13.37.0/cnspec_13.37.0_darwin_arm64.tar.gz"
  end

  def install
    bin.install "cnspec"
    bin.install_symlink "cnspec" => "cnquery"
  end

  test do
    system "#{bin}/cnspec --version"
  end
end

