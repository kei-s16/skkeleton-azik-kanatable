## skkeleton-azik-kanatable
[vim-skk/skkeleton](https://github.com/vim-skk/skkeleton)にAZIKテーブル定義を追加するプラグイン

### requirements
- [vim-skk/skkeleton](https://github.com/vim-skk/skkeleton)

### configuration
```lua
local opts = {}

vim.fn['skkeleton#azik#add_table']()
vim.fn['skkeleton#azik#set_keyconfig']()

vim.fn['skkeleton#config']{
  kanaTable = 'azik'
}

vim.api.nvim_set_keymap('i', '<C-j>', '<Plug>(skkeleton-enable)', opts)
vim.api.nvim_set_keymap('c', '<C-j>', '<Plug>(skkeleton-enable)', opts)
-- AZIKテーブルに disable のマッピングを定義していないので、設定側で登録する必要があります
vim.api.nvim_set_keymap('i', '<C-l>', '<Plug>(skkeleton-disable)', opts)
vim.api.nvim_set_keymap('c', '<C-l>', '<Plug>(skkeleton-disable)', opts)
```
