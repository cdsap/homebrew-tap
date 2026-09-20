class DaemonitorCli < Formula
  desc "Terminal monitor for local Gradle daemons"
  homepage "https://github.com/cdsap/daemonitor"
  url "https://github.com/cdsap/daemonitor/releases/download/v1.0.7/daemonitor-cli-1.0.7.zip"
  sha256 "6cb30d7b185caacb1027367e0ec465715e0b6b3075019971ef481267f1a4064e"
  license "MIT"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    bin.write_env_script libexec/"bin/daemonitor-cli",
                         Language::Java.overridable_java_home_env("21")
  end

  test do
    assert_match "Usage", shell_output("#{bin}/daemonitor-cli --help")
  end
end
