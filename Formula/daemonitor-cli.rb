class DaemonitorCli < Formula
  desc "Terminal monitor for local Gradle daemons"
  homepage "https://github.com/cdsap/daemonitor"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cdsap/daemonitor/releases/download/v1.2.0/daemonitor-cli-1.2.0-macos-arm64.zip"
      sha256 "5881d4a2e3e2f4c42ee1d6e45a0d41da99275e90481fee4070784920b470d92c"
    end
    on_intel do
      url "https://github.com/cdsap/daemonitor/releases/download/v1.2.0/daemonitor-cli-1.2.0-macos-x64.zip"
      sha256 "ef2b51d2db141cd196d4c3bb632bd179707f82833186027366454afb9bde2cd5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cdsap/daemonitor/releases/download/v1.2.0/daemonitor-cli-1.2.0-linux-x64.zip"
      sha256 "de146d152c7a95098219e238b2038e37b00b15c7981e632c09b2eff502e5f5ac"
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
