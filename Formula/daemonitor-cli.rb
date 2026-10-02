class DaemonitorCli < Formula
  desc "Terminal monitor for local Gradle daemons"
  homepage "https://github.com/cdsap/daemonitor"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cdsap/daemonitor/releases/download/v1.2.1/daemonitor-cli-1.2.1-macos-arm64.zip"
      sha256 "39574617ca2f100482458b5cb40400e1d8240a599e435af9314b0c007400dae3"
    end
    on_intel do
      url "https://github.com/cdsap/daemonitor/releases/download/v1.2.1/daemonitor-cli-1.2.1-macos-x64.zip"
      sha256 "18ef692ac5ae9029067700918cb13812a74117bfe5ecc27dbcbc3888d2585322"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cdsap/daemonitor/releases/download/v1.2.1/daemonitor-cli-1.2.1-linux-x64.zip"
      sha256 "321803625fab1e3d2bd3d637c7de39e6130c69073d381834f5327eaa82a37918"
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
