class Flightlog < Formula
  desc "Record coding-agent sessions as portable, redacted, resumable bundles"
  homepage "https://flightlog.sh"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/skrcka/flightlog/releases/download/v0.2.2/flightlog-aarch64-apple-darwin.tar.gz"
      sha256 "17217cb306b53a61f23576ff8ed6938f687a5de174d853b219d367cd506937e9"
    end
    on_intel do
      url "https://github.com/skrcka/flightlog/releases/download/v0.2.2/flightlog-x86_64-apple-darwin.tar.gz"
      sha256 "a193e4d0d85963bbc36e9f241a838db774681abafdd6043b5e1c4df046399dbd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/skrcka/flightlog/releases/download/v0.2.2/flightlog-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3760f23a47b3844c0add1ba766c549cc16b981cfb5f8f2d644102f647f2196e9"
    end
    on_intel do
      url "https://github.com/skrcka/flightlog/releases/download/v0.2.2/flightlog-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8d41d2501a392e8d74641681696d209ee36921a9537022dba4f8e3e992e24138"
    end
  end

  def install
    bin.install "flightlog"
    man1.install Dir["man/*.1"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flightlog --version")
  end
end
