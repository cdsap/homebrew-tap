class DaemonitorCli < Formula
  desc "Terminal monitor for local Gradle daemons"
  homepage "https://github.com/cdsap/daemonitor"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cdsap/daemonitor/releases/download/v1.3.1/daemonitor-cli-1.3.1-macos-arm64.zip"
      sha256 "b72a2dc5f288fb30d25f9a52fec8404c55c37a0707c5d78c236e7393916143cd"
    end
    on_intel do
      url "https://github.com/cdsap/daemonitor/releases/download/v1.3.1/daemonitor-cli-1.3.1-macos-x64.zip"
      sha256 "b43f6d41857e1969b00452dedba0b9dc824ed8f0116e4560e72506ba1c76c2f0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cdsap/daemonitor/releases/download/v1.3.1/daemonitor-cli-1.3.1-linux-x64.zip"
      sha256 "a3b075d419aed565ab6c84cf3c79167ad5787bc56e045e6a45583c0a26dedab6"
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
