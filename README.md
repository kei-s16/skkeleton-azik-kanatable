## skkeleton-azik-kanatable
[vim-skk/skkeleton](https://github.com/vim-skk/skkeleton)にAZIKテーブル定義を追加するプラグイン

### requirements
- [vim-skk/skkeleton](https://github.com/vim-skk/skkeleton)

### configuration
```lua
vim.fn['skkeleton#azik#add_table']()
vim.fn['skkeleton#azik#set_keyconfig']()

vim.fn['skkeleton#config']{
  kanaTable = 'azik'
}

keymap('i', '<C-j>', '<Plug>(skkeleton-enable)')
keymap('c', '<C-j>', '<Plug>(skkeleton-enable)')
keymap('i', '<C-l>', '<Plug>(skkeleton-disable)')
keymap('c', '<C-l>', '<Plug>(skkeleton-disable)')
```
