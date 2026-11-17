class DaemonitorCli < Formula
  desc "Terminal monitor for local Gradle daemons"
  homepage "https://github.com/cdsap/daemonitor"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cdsap/daemonitor/releases/download/v1.3.2/daemonitor-cli-1.3.2-macos-arm64.zip"
      sha256 "f6107f16b675dd58b12dbddcc55c91de89edd4106d8223eca1af08926cf08f74"
    end
    on_intel do
      url "https://github.com/cdsap/daemonitor/releases/download/v1.3.2/daemonitor-cli-1.3.2-macos-x64.zip"
      sha256 "180f061d09a39a006e3fae0f1c18fc1bc7d99a02df0922426b2bac3c7e53c869"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cdsap/daemonitor/releases/download/v1.3.2/daemonitor-cli-1.3.2-linux-x64.zip"
      sha256 "b5ee472058a0812c4bcf7711eb7c6d5b7b83a66573857f796aba2a1d30fe3f47"
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
