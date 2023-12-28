return {
  "CRAG666/code_runner.nvim",
  keys = {
    {
      "<leader>cr",
      "<cmd>RunCode<CR>",
      desc = "run code",
    },
    {
      "<leader>cc",
      "<cmd>RunClose<CR>",
      desc = "close code-runner",
    },
  },
  opts = {
    filetype = {
      java = {
        "cd $dir &&",
        "javac $fileName &&",
        "java $fileNameWithoutExt",
      },
      c = {
        "cd $dir &&",
        "gcc $fileName",
        "-o $fileNameWithoutExt &&",
        "$dir/$fileNameWithoutExt",
      },
      cpp = {
        "cd $dir &&",
        "clang++ $fileName",
        "-o $fileNameWithoutExt &&",
        "$dir/$fileNameWithoutExt",
      },
      python = "python -u",
      rust = {
        "cd $dir &&",
        "rustc $fileName &&",
        "$dir/$fileNameWithoutExt",
      },
    },
  },
}
