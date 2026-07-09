class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.40.tar.gz"
  sha256 "f2c1dc4c8c535f5e770fe27910133fc075dda093e03f951ce5a99ef3f8c7a439"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.40"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "ce3c599b36fd8a32461dbe0b3a29259720447c818615e579f74997b2f7c709d0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c38a53c8fc1af462adc56aff389b8b323521f5cb2f9b2d14cab5225c0356a782"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
