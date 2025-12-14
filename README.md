# 🧪🚀​⚡​ Go Fly Test

Run the Golang tests using [vim-go](https://github.com/fatih/vim-go) commands


![img](https://i.imgur.com/FvaoDS0.png)


## 📦 Installation

Install the plugin with your preferred package manager:

### [Lazy](https://github.com/folke/lazy.nvim)

```lua
-- Lua
{
	"pablotrianda/goFlyTest",
	dependencies = {
		"fatih/vim-go"
	},
	config = true,
	keys = { { "<leader>t", desc = "Open Test menu" } },
}
```

## 🚀 Usage
🖮 `<leader>t`

## Details
Show the following options:
* `GoTestFunc`
* `GoFuncFile`
* `GoTestCompile`
* `GoCoverage (Diff)`
* `go test ./... -coverprofile=cover.out && go tool cover -html=cover.out` (Open in browser)
