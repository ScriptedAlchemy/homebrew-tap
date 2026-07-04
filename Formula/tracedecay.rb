class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.26.tar.gz"
  sha256 "f6db86137eaba79161a3ea2a4d3cb7d60ba53016025cb3426ab1f7beb2b0270a"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.26"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "d056a759e558f5a783da29e0d5f33ef3149ab2359b6913c171685033a58ca216"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "d474e14dc3525fb58b4a7f6c999ae0c5c401cdd527b290a081fd3dca120f99c1"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
