-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\pct20\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\share\\lua\\5.1\\?.lua;C:\\Users\\pct20\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\pct20\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\pct20\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\pct20\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "C:\\Users\\pct20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\Comment.nvim",
    url = "https://github.com/numtoStr/Comment.nvim"
  },
  ale = {
    loaded = true,
    path = "C:\\Users\\pct20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\ale",
    url = "https://github.com/dense-analysis/ale"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "C:\\Users\\pct20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  catppuccin = {
    loaded = true,
    path = "C:\\Users\\pct20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "C:\\Users\\pct20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lualine-time"] = {
    config = { "\27LJ\2\n¹\5\0\0\5\0\28\0-6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\3=\3\19\0025\3\20\0004\4\0\0=\4\b\0034\4\0\0=\4\n\0035\4\21\0=\4\f\0035\4\22\0=\4\14\0034\4\0\0=\4\16\0034\4\0\0=\4\18\3=\3\23\0024\3\0\0=\3\24\0024\3\0\0=\3\25\0024\3\0\0=\3\26\0024\3\0\0=\3\27\2B\0\2\1K\0\1\0\15extensions\20inactive_winbar\vwinbar\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\6\14lualine_z\0\14lualine_y\0\14lualine_x\0\14lualine_c\0\14lualine_b\0\14lualine_a\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\2\0\0\nctime\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\6\14lualine_z\0\14lualine_y\0\14lualine_x\0\14lualine_c\0\14lualine_b\0\14lualine_a\0\1\2\0\0\tmode\foptions\1\0\a\rsections\0\15extensions\0\20inactive_winbar\0\vwinbar\0\ftabline\0\22inactive_sections\0\foptions\0\1\0\1\ntheme\tauto\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "C:\\Users\\pct20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lualine-time",
    url = "https://github.com/archibate/lualine-time"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "C:\\Users\\pct20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["monokai-pro.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16monokai-pro\frequire\0" },
    loaded = true,
    path = "C:\\Users\\pct20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\monokai-pro.nvim",
    url = "https://github.com/loctvl842/monokai-pro.nvim"
  },
  ["neoscroll.nvim"] = {
    loaded = true,
    path = "C:\\Users\\pct20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "C:\\Users\\pct20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\pct20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\pct20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "C:\\Users\\pct20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\pct20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  rainbow = {
    config = { "\27LJ\2\n0\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0\19rainbow_active\6g\bvim\0" },
    loaded = true,
    path = "C:\\Users\\pct20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\rainbow",
    url = "https://github.com/luochen1990/rainbow"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\pct20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  termdbg = {
    loaded = true,
    path = "C:\\Users\\pct20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\termdbg",
    url = "https://github.com/epheien/termdbg"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "C:\\Users\\pct20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-expand"] = {
    loaded = true,
    path = "C:\\Users\\pct20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-expand",
    url = "https://github.com/Olical/vim-expand"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "C:\\Users\\pct20\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: lualine-time
time([[Config for lualine-time]], true)
try_loadstring("\27LJ\2\n¹\5\0\0\5\0\28\0-6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\3=\3\19\0025\3\20\0004\4\0\0=\4\b\0034\4\0\0=\4\n\0035\4\21\0=\4\f\0035\4\22\0=\4\14\0034\4\0\0=\4\16\0034\4\0\0=\4\18\3=\3\23\0024\3\0\0=\3\24\0024\3\0\0=\3\25\0024\3\0\0=\3\26\0024\3\0\0=\3\27\2B\0\2\1K\0\1\0\15extensions\20inactive_winbar\vwinbar\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\6\14lualine_z\0\14lualine_y\0\14lualine_x\0\14lualine_c\0\14lualine_b\0\14lualine_a\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\2\0\0\nctime\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\6\14lualine_z\0\14lualine_y\0\14lualine_x\0\14lualine_c\0\14lualine_b\0\14lualine_a\0\1\2\0\0\tmode\foptions\1\0\a\rsections\0\15extensions\0\20inactive_winbar\0\vwinbar\0\ftabline\0\22inactive_sections\0\foptions\0\1\0\1\ntheme\tauto\nsetup\flualine\frequire\0", "config", "lualine-time")
time([[Config for lualine-time]], false)
-- Config for: monokai-pro.nvim
time([[Config for monokai-pro.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16monokai-pro\frequire\0", "config", "monokai-pro.nvim")
time([[Config for monokai-pro.nvim]], false)
-- Config for: rainbow
time([[Config for rainbow]], true)
try_loadstring("\27LJ\2\n0\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0\19rainbow_active\6g\bvim\0", "config", "rainbow")
time([[Config for rainbow]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
