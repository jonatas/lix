defmodule LixTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest Lix

  test "cmd to shell" do
    assert Lix.cmd("ls") == "ls"
  end

  test "run cmd to any shell" do
    assert capture_io(fn -> 
      Lix.run("ls")
    end) =~ "mix.exs"
  end

  test "run cmd with args to any shell" do
    assert capture_io(fn -> 
      Lix.run("ls -lah")
    end) =~ "drwx"
  end

  test "run cmd piped to any shell" do
    assert capture_io(fn -> 
      Lix.run("ls -lah config/ | wc -l")
    end) =~ "4"
  end

  test "command line gets something and put it back to run" do
    assert capture_io(fn -> 
      Lix.print("$")
    end) =~ "$"
  end
end
