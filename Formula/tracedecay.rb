class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.49.tar.gz"
  sha256 "26043b99c256e3b8049c5611893fd67f22bbc553ac86ff76aff803feb3ea1e44"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.49"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "3e915722e1dda7ec4166cbb01d0b2ec70e4f2b68ef49326631cc46a658bc5202"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "afd2db6d996ef9cfbeac979fbf8c1212b72160089f4cff7146052855261cc623"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
