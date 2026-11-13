class DaemonitorCli < Formula
  desc "Terminal monitor for local Gradle daemons"
  homepage "https://github.com/cdsap/daemonitor"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cdsap/daemonitor/releases/download/v1.2.4/daemonitor-cli-1.2.4-macos-arm64.zip"
      sha256 "ef0d06a5d352c53b25306c016c4f3ec6fc5cfbb790ca8243ca4ed2e9354cbd24"
    end
    on_intel do
      url "https://github.com/cdsap/daemonitor/releases/download/v1.2.4/daemonitor-cli-1.2.4-macos-x64.zip"
      sha256 "f6820f67f665797caf235b3ca75b9b01dba87f451dc3a5b227ce2b86f9f92e67"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cdsap/daemonitor/releases/download/v1.2.4/daemonitor-cli-1.2.4-linux-x64.zip"
      sha256 "108fff50a271eb1ac8826d01945d734e7f31ccc1f71b7cb01ddb0bb338b30765"
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
