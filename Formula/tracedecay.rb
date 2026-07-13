class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.65.tar.gz"
  sha256 "d41a6a70cf76ca0ab3c7ecbfa3ffa542adcbf04d87f9011fa75cc85c0ace3c65"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.65"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "9a46dc7aa245cf433bf0209e99e4e02c6d1d2d4185a97a1a2594cde78ada8e11"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b728cf60add2b3f45f99f8853b764b454822013dacde8e3726d8cc3a5ccf527c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
