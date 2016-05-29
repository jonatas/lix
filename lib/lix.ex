defmodule Lix do
  def cmd args do
    args
  end

  def run args do
    Mix.Shell.IO.cmd(args)
  end

  def print message do
    Mix.Shell.IO.info(message)
  end

  def pwd do
    run("pwd")
  end

  def readline do
    Mix.shell.prompt("∫")
  end

  def interactive do
    run(readline)
    interactive
  end

end
