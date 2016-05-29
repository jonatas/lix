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
end
