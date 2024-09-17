require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <cr>", {desc = "Add breakpoint at line"})
map("n", "<leader>dus", function ()
  --local widgets = require("dap.ui.widgets");
  --local sidebar = widgets.sidebar(widgets.scopes);
  --sidebar.open();
  local dapui = require("dapui");
  dapui.open();
end, { desc ="Open debugging sidebar"})
map("n", "<leader>duc", function ()
  local dapui = require("dapui");
  dapui.close();
end, {desc = "close debugging ui"})
map("n", "<leader><Down>", "<cmd> DapStepOver <cr>", {desc = "debug step over"})
map("n", "<leader><Right>", "<cmd> DapStepInto <cr>", {desc = "debug step into"})
map("n", "<leader><Left>", "<cmd> DapStepOut <cr>", {desc = "debug step out"})
map("n", "<leader><f5>", "<cmd> DapContinue <cr>", {desc = "debug continue"})
map("n", "<leader>gjt", "<cmd> GoTags json <cr>", {desc = "auto add json tag for go struct"})
map("n", "<leader>gyt", "<cmd> GoTags yaml <cr>", {desc = "auto add yaml tag for go struct"})
--map("n", "<leader>dgt", function ()
--  require("dap-go").debug_test();
--end, {desc = "Debug go test"})
--map("n", "<leader>dgl", function ()
--  require("dap-go").debug_last();
--end, {desc="Debug last go test"})
--
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
