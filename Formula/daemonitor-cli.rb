class DaemonitorCli < Formula
  desc "Terminal monitor for local Gradle daemons"
  homepage "https://github.com/cdsap/daemonitor"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cdsap/daemonitor/releases/download/v1.2.2/daemonitor-cli-1.2.2-macos-arm64.zip"
      sha256 "4ddaab7d2da7245e4dc3c1ae1c62f0b6bc7819c31c97a9ae582c41754dedb440"
    end
    on_intel do
      url "https://github.com/cdsap/daemonitor/releases/download/v1.2.2/daemonitor-cli-1.2.2-macos-x64.zip"
      sha256 "7d14f36c39dc809c119d98cc3c6346f72eb6a91e089b4116b0da65d58a06e52b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cdsap/daemonitor/releases/download/v1.2.2/daemonitor-cli-1.2.2-linux-x64.zip"
      sha256 "4ca90ef8dc220078e273dc5ee345fa3fd009b3529883e13c50d1026d747ceaf9"
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
