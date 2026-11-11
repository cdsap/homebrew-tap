class ProjectGenerator < Formula
  desc "CLI generating modularized Gradle projects"
  homepage "https://github.com/cdsap/ProjectGenerator"
  url "https://github.com/cdsap/ProjectGenerator/releases/download/v0.6.12/projectGenerator",
      using: :nounzip
  version "0.6.12"
  sha256 "44ee5bb1ab850472a283c17f0fa355ee0549e7f61077df4d90332d2078d97fe3"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install "projectGenerator"
    chmod 0755, libexec/"projectGenerator"
    env = Language::Java.overridable_java_home_env
    env["PATH"] = "#{formula_opt_bin("openjdk")}:$PATH"
    (bin/"projectGenerator").write_env_script libexec/"projectGenerator", env
  end

  test do
    assert_match "Usage", shell_output("#{bin}/projectGenerator --help")
  end
end
