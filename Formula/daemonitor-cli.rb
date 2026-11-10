class DaemonitorCli < Formula
  desc "Terminal monitor for local Gradle daemons"
  homepage "https://github.com/cdsap/daemonitor"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cdsap/daemonitor/releases/download/v1.2.3/daemonitor-cli-1.2.3-macos-arm64.zip"
      sha256 "53c7740be1d998217045e6960c670a40273791fd597f16a182fe22c7533f160c"
    end
    on_intel do
      url "https://github.com/cdsap/daemonitor/releases/download/v1.2.3/daemonitor-cli-1.2.3-macos-x64.zip"
      sha256 "edeaf1ec58976bbb85f6e283a7793c5f78a3006d95f31599861de2974ba24072"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cdsap/daemonitor/releases/download/v1.2.3/daemonitor-cli-1.2.3-linux-x64.zip"
      sha256 "517d5e3367bebbedc397ed0c2750d598df06df8349d19c831b6097d9ae6964b2"
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
