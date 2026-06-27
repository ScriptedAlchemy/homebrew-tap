class Tracedecay < Formula
  desc "Code intelligence tool that builds semantic knowledge graphs from source code"
  homepage "https://github.com/ScriptedAlchemy/tracedecay"
  url "https://github.com/ScriptedAlchemy/tracedecay/archive/refs/tags/v0.0.15.tar.gz"
  sha256 "e9849a0a073e9b8456feaf8af51f7110af39149188c73fc8ad9bcefdfb3e7369"
  license "MIT"

  bottle do
    root_url "https://github.com/ScriptedAlchemy/tracedecay/releases/download/v0.0.15"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "62fd77ffa0a1a78c821a81be7a332b0a5be164ba0063d7741a9cdaf6ad5ec23f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7dc3f42bea6bf8669fcf3b0a75671f3a92c4faff6093bd20c4c0493f8a3bb889"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/tracedecay", "--help"
  end
end
