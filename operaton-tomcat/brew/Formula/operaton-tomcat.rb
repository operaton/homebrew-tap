# Generated with JReleaser 1.15.0 at 2024-12-26T10:04:45.651062+01:00

class OperatonTomcat < Formula
  desc "BPMN-Process automation for everyone"
  homepage "https://operaton.org"
  version "1.0.0-beta-2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/operaton/operaton/releases/download/v1.0.0-beta-2/operaton-bpm-tomcat-1.0.0-beta-2.zip"
    sha256 "8a50cbdac290c875be3611022d4e15128b17a215de9a0ef3baa85e3047a83cf2"
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
