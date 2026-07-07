class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.35.tar.gz"
  sha256 "87daaec3b65667e4fa23e66d0595584b79f1ac553375252e9866e696ae2dfcb3"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.35"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "ea9a7c408503b11f95007de35cb844feee272f5ec254f37b414365c357c3f633"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "46596220c0810d8fe026cba8e3fc06b749e6b3d58f026692f9fffe46b2b57517"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
