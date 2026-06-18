class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "ab9386bd50ffd3b6d63f3237035b5472113c40df6fd7f9e30dc780fb8a0b66ca"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.2"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "a54e8198da8e8a538b3aa2b991f95650537417b4555b38c80ea464ca6100c447"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7e5061e0113b5789325f7ae06f9f47f4c0a24121d54f8e384c1ca65b38d6673a"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
