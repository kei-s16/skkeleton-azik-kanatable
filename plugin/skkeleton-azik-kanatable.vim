" skkeletonが呼び出されていなければ、終了する
if exists('g:loaded_skkeleton') == 0
  finish
endif

" すでに呼び出されたことがあれば、終了する
if exists('g:loaded_skkeleton_azik_kanatable') && g:loaded_skkeleton_azik_kanatable
  finish
endif

" フラグを立てておわり
let g:loaded_skkeleton_azik_kanatable = v:true
