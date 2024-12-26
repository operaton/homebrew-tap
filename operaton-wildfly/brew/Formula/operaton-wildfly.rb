# Generated with JReleaser 1.15.0 at 2024-12-26T10:04:45.651062+01:00

class OperatonWildfly < Formula
  desc "BPMN-Process automation for everyone"
  homepage "https://operaton.org"
  version "1.0.0-beta-2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/operaton/operaton/releases/download/v1.0.0-beta-2/operaton-bpm-wildfly-1.0.0-beta-2.zip"
    sha256 "2cc5da71ad0706f9cdb8199f3d869a86633775dd429e7667203ff137a9698c1a"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/start" => "start"
  end

  test do
    output = shell_output("#{bin}/start --version")
    assert_match "1.0.0-beta-2", output
  end
end
