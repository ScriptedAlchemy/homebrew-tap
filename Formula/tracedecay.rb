class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.47.tar.gz"
  sha256 "470f10a9509e13d412adefaf8bc09f018b9ad9908477a6bdf219ed0c87ff8425"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.47"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "0f40f09fd7761a86f5b5253ad4d3bbad5b192cc57a98452bc7d7dcbd7cb48c28"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "37dcd0a88bf9adc3cc516cf172ef7a5c3a6782009499097e93b43c5173c5558a"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
