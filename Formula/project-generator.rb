class ProjectGenerator < Formula
  desc "CLI generating modularized Gradle projects"
  homepage "https://github.com/cdsap/ProjectGenerator"
  url "https://github.com/cdsap/ProjectGenerator/releases/download/v0.7.0/projectGenerator",
      using: :nounzip
  version "0.7.0"
  sha256 "fed64a10c7f7215b93bb0c4a244062acaebf3d66fe98acdff50acf02d41c156f"
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
