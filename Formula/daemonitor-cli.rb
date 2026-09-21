class DaemonitorCli < Formula
  desc "Terminal monitor for local Gradle daemons"
  homepage "https://github.com/cdsap/daemonitor"
  url "https://github.com/cdsap/daemonitor/releases/download/v1.1.0/daemonitor-cli-1.1.0.zip"
  sha256 "4c3b95d6819a2b0b0121841ce439096e167b15d49eab170ba96cc5e11b09ee6a"
  license "MIT"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"daemonitor-cli").write_env_script libexec/"bin/daemonitor-cli",
                                            Language::Java.overridable_java_home_env("21")
  end

  test do
    assert_match "Usage", shell_output("#{bin}/daemonitor-cli --help")
  end
end
