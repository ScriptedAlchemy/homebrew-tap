class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.70.tar.gz"
  sha256 "e0e71c220c2d4fdecba12c77cf3fecf46d006b91d37c594b32d86a8ca002e409"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.70"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "0b9f043cbdfab92d1e10cf2cbc15bbecc106bbe3d30ab393097d280d1ebf75e1"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f78389caab9731e2f3e9a8160946c4b5f0f4a6939ebcea662d64c8e8ed74d05e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
