class Flightlog < Formula
  desc "Record coding-agent sessions as portable, redacted, resumable bundles"
  homepage "https://flightlog.sh"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/skrcka/flightlog/releases/download/v0.3.0/flightlog-aarch64-apple-darwin.tar.gz"
      sha256 "45e3f6789ed72f9aa8fda560b0bd8cf1b7e05a79498998218c7039f95d6366c1"
    end
    on_intel do
      url "https://github.com/skrcka/flightlog/releases/download/v0.3.0/flightlog-x86_64-apple-darwin.tar.gz"
      sha256 "6ed103eeae859385020b3355b2e6a15a85a22391a0eea656ab934e7ed751b28c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/skrcka/flightlog/releases/download/v0.3.0/flightlog-aarch64-unknown-linux-musl.tar.gz"
      sha256 "19fea62b7f1b5b720514d5dcd33a9d9561b9b6f62c1c808c54cf3dd05856f43e"
    end
    on_intel do
      url "https://github.com/skrcka/flightlog/releases/download/v0.3.0/flightlog-x86_64-unknown-linux-musl.tar.gz"
      sha256 "49f5939a6cf4cedc667de4d45ed46af9fcedecce71c88045947e93b90f9e8653"
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
