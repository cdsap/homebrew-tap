class DaemonitorCli < Formula
  desc "Terminal monitor for local Gradle daemons"
  homepage "https://github.com/cdsap/daemonitor"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cdsap/daemonitor/releases/download/v1.3.0/daemonitor-cli-1.3.0-macos-arm64.zip"
      sha256 "32a340eb61d2fd9a8beaf01a4ef29185e9978df6324695ffbf9053bffc457dd0"
    end
    on_intel do
      url "https://github.com/cdsap/daemonitor/releases/download/v1.3.0/daemonitor-cli-1.3.0-macos-x64.zip"
      sha256 "70a3fa100a0d28696253b9f0d6f78cd1dc5430f736d1a791401c413e6ff419c3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cdsap/daemonitor/releases/download/v1.3.0/daemonitor-cli-1.3.0-linux-x64.zip"
      sha256 "10de0ab6044b914292db79587fc043dbf86f79e9c780b6e39d16b8bd451cb811"
    end
  end

  def install
    bin.install "bin/daemonitor-cli"
    bin.install "bin/daemonitor-cored"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/daemonitor-cli --help")
    assert_predicate bin/"daemonitor-cored", :exist?
  end
end
