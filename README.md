## skkeleton-azik-kanatable
[vim-skk/skkeleton](https://github.com/vim-skk/skkeleton)にAZIKテーブル定義を追加するプラグイン

### requirements
- [vim-skk/skkeleton](https://github.com/vim-skk/skkeleton)

### installation
以下にdein.vimでの設定を例示します。   

```toml
# これはlazyloadをする場合の設定です。
[[plugins]]
repo = 'vim-skk/skkeleton'
on_event = ['InsertEnter']
lua_source = "require('plugins.skkeleton')"

[[plugins]]
repo = 'kei-s16/skkeleton-azik-kanatable'
on_source = 'skkeleton'
```

### configuration
`skkeleton#azik#add_table()` を呼び出してAZIKテーブルを登録し、その後 `skkeleton#config()` でkanaTableを指定してください。  
以下にluaでの設定を例示します。

```lua
local opts = {}

vim.fn['skkeleton#azik#add_table']('us')

vim.fn['skkeleton#config']{
  kanaTable = 'azik'
}
```

また、このプラグインで定義したAZIKテーブルを使う際は `skkeleton-enable` に加えて、`skkeleton-disable` のマッピングも必要になります。  
以下にluaでの設定を例示します。

```lua
vim.api.nvim_set_keymap('i', '<C-j>', '<Plug>(skkeleton-enable)', opts)
vim.api.nvim_set_keymap('c', '<C-j>', '<Plug>(skkeleton-enable)', opts)
-- AZIKテーブルに disable のマッピングを定義していないので、設定側で登録する必要があります
vim.api.nvim_set_keymap('i', '<C-l>', '<Plug>(skkeleton-disable)', opts)
vim.api.nvim_set_keymap('c', '<C-l>', '<Plug>(skkeleton-disable)', opts)
```
