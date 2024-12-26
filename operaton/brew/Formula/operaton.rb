# Generated with JReleaser 1.15.0 at 2024-12-20T10:09:16.966814+01:00

class Operaton < Formula
  desc "BPMN-Process automation for everyone"
  homepage "https://operaton.org"
  version "1.0.0-beta-3-SNAPSHOT"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/operaton/operaton/releases/download/early-access/operaton-bpm-run-1.0.0-beta-3-SNAPSHOT.zip"
    sha256 "c21b4e4f437312ffb55f6d36b89489143982227b85de5fc2e4f4d9f220813482"
  end

  depends_on "openjdk" => "17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/start" => "start"
  end

  test do
    output = shell_output("#{bin}/start --version")
    assert_match "1.0.0-beta-3-SNAPSHOT", output
  end
end
