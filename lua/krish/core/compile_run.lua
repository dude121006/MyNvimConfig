local M = {}

M.compile_and_run = function()
	local filetype = vim.bo.filetype
	local filename = vim.fn.expand("%")
	local command = ""

	if filetype == "c" then
		command =
			string.format("gcc %s -o %s && ./%s; echo 'Press Enter to close...' && read", filename, "a.out", "a.out")
	elseif filetype == "cpp" then
		command =
			string.format("g++ %s -o %s && ./%s; echo 'Press Enter to close...' && read", filename, "a.out", "a.out")
	elseif filetype == "python" then
		command = string.format("python %s; echo 'Press Enter to close...' && read", filename)
	elseif filetype == "java" then
		local classname = filename:gsub("%.java$", "")
		command = string.format("javac %s && java %s; echo 'Press Enter to close...' && read", filename, classname)
	elseif filetype == "sh" then
		command = string.format("bash %s; echo 'Press Enter to close...' && read", filename)
	elseif filetype == "text" then
		local rule_file = "rules.yara"
		command = string.format("yara64.exe %s %s", rule_file, filename)
	else
		print("Filetype not supported!")
		return
	end

	-- Execute the command in a terminal split
	vim.cmd(string.format("split | term %s", command))
end

return M
