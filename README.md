# my-nvim-config

# Neovim Configuration - Complete README

This document provides a comprehensive overview of the keybindings, plugins, and configurations in the Neovim setup. These configurations are designed to enhance productivity and provide a better editing experience.

---

## **Leader Key**

The leader key is set to `<Space>`. This key is used as a prefix for many custom keybindings.

```lua
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
```

---

## **General Keymaps**

### **Basic Navigation**

- **Move through wrapped lines**:
  - `j`: Move down (handls wrapped lines).
  - `k`: Move up (handles wrapped lines).

### **Saving and Quitting**

- `<C-s>`: Save the current file.
- `<leader>sn`: Save the file without auto-formatting.
- `<C-q>`: Quit the current buffer.

### **Editing**

- `x`: Delete a single character without copying it into the register.
- `<leader>+`: Increment the number under the cursor.
- `<leader>-`: Decrement the number under the cursor.

### **Search and Replace**

- `n`: Find the next match and center the screen.
- `N`: Find the previous match and center the screen.
- `<leader>j`: Replace the word under the cursor (uses `cgn`).

---

## **Window Management**

### **Splits**

- `<leader>v`: Split the window vertically.
- `<leader>h`: Split the window horizontally.
- `<leader>se`: Make all split windows equal in size.
- `<leader>xs`: Close the current split window.

### **Navigating Between Splits**

- `<C-k>`: Move to the split above.
- `<C-j>`: Move to the split below.
- `<C-h>`: Move to the split on the left.
- `<C-l>`: Move to the split on the right.

### **Resizing Splits**

- `<Up>`: Increase the height of the current split.
- `<Down>`: Decrease the height of the current split.
- `<Left>`: Decrease the width of the current split.
- `<Right>`: Increase the width of the current split.

---

## **Buffer Management**

- `<Tab>`: Switch to the next buffer.
- `<S-Tab>`: Switch to the previous buffer.
- `<leader>x`: Close the current buffer.
- `<leader>b`: Open a new buffer.

---

## **Tab Management**

- `<leader>to`: Open a new tab.
- `<leader>tx`: Close the current tab.
- `<leader>tn`: Go to the next tab.
- `<leader>tp`: Go to the previous tab.

---

## **Visual Mode Keymaps**

### **Indentation**

- `<`: Decrease indentation.
- `>`: Increase indentation.

### **Moving Lines**

- `<A-j>`: Move the selected lines down.
- `<A-k>`: Move the selected lines up.

### **Pasting**

- `p`: Paste without overwriting the default register.

---

## **Clipboard Operations**

- `<leader>y`: Yank the selected text to the system clipboard.
- `<leader>Y`: Yank the entire line to the system clipboard.

---

## **Diagnostics**

### **Toggle Diagnostics**

- `<leader>do`: Toggle diagnostics on/off.

### **Navigating Diagnostics**

- `[d`: Go to the previous diagnostic message.
- `]d`: Go to the next diagnostic message.
- `<leader>d`: Open a floating window with the diagnostic message.
- `<leader>q`: Open the diagnostics list.

---

## **Session Management**

- `<leader>ss`: Save the current session to `.session.vim`.
- `<leader>sl`: Load the session from `.session.vim`.

---

## **Debugging Keymaps**

### **Basic Debugging**

- `<F5>`: Start or continue debugging.
- `<F1>`: Step into a function.
- `<F2>`: Step over a function.
- `<F3>`: Step out of a function.
- `<leader>b`: Toggle a breakpoint.
- `<leader>B`: Set a conditional breakpoint (prompts for a condition).

### **DAP UI**

- `<F7>`: Toggle the DAP UI to see the last session result.

---

## **Telescope Keymaps**

### **General Search**

- `<leader>?`: Find recently opened files.
- `<leader>sb`: Search existing buffers.
- `<leader>sm`: Search marks.
- `<leader>sf`: Search files.
- `<leader>sh`: Search help tags.
- `<leader>sw`: Search for the word under the cursor.
- `<leader>sg`: Live grep in the project.
- `<leader>sd`: Search diagnostics.
- `<leader>sr`: Resume the last search.
- `<leader>s.`: Search recent files.
- `<leader>sds`: Search LSP document symbols.
- `<leader>/`: Fuzzy search in the current buffer.

### **Git Integration**

- `<leader>gf`: Search Git files.
- `<leader>gc`: Search Git commits.
- `<leader>gcf`: Search Git commits for the current file.
- `<leader>gb`: Search Git branches.
- `<leader>gs`: Search Git status (diff view).

---

## **Neo-tree Keymaps**

### **File Explorer**

- `<leader>w`: Toggle the floating Neo-tree window.
- `<leader>e`: Toggle the left Neo-tree window.
- `<leader>ngs`: Open the Git status window in Neo-tree.

### **Window Management**

- `<space>`: Toggle a node in Neo-tree.
- `<cr>`: Open a file or directory.
- `<esc>`: Cancel or close the Neo-tree window.
- `P`: Toggle preview mode.
- `l`: Open a file or directory.
- `S`: Open a file in a horizontal split.
- `s`: Open a file in a vertical split.
- `t`: Open a file in a new tab.
- `w`: Open a file with the window picker.
- `C`: Close a node.
- `z`: Close all nodes.
- `a`: Add a file or directory.
- `A`: Add a directory.
- `d`: Delete a file or directory.
- `r`: Rename a file or directory.
- `y`: Copy to clipboard.
- `x`: Cut to clipboard.
- `p`: Paste from clipboard.
- `c`: Copy a file or directory.
- `m`: Move a file or directory.
- `q`: Close the Neo-tree window.
- `R`: Refresh the Neo-tree window.
- `?`: Show help.

---

## **Auto-session Keymaps**

### **Session Management**

- `<leader>asr`: Search for a session.
- `<leader>ass`: Save the current session.
- `<leader>asa`: Toggle autosave for sessions.

### **Configuration**

Auto-session is configured with the following options:

- **Session Lens**: Enabled with Telescope integration.
- **Mappings**:
  - `<C-D>`: Delete a session.
  - `<C-S>`: Alternate between sessions.
  - `<C-Y>`: Copy a session.

---

## **Comment.nvim Keymaps**

### **Commenting**

### **Sources**

- **LSP**: Language Server Protocol.
- **Luasnip**: Snippet engine.
- **Buffer**: Current buffer.
- **Path**: File paths.

### **Formatting**

- **Icons**: Custom icons for different completion kinds.
- **Menu**: Source of the completion item (e.g., LSP, Snippet, Buffer, Path).

- `<C-_>`: Toggle linewise comment.
- `<C-c>`: Toggle linewise comment.
- `<C-/>`: Toggle linewise comment.

### **Visual Mode Commenting**

- `<C-_>`: Toggle comment for the selected region.
- `<C-c>`: Toggle comment for the selected region.
- `<C-/>`: Toggle comment for the selected region.

---

## **Harpoon Keymaps**

### **File Management**

- `<leader>M`: Toggle the Harpoon quick menu.
- `<leader>m`: Add the current file to the Harpoon list.

### **File Navigation**

- `<leader>1`: Navigate to the first file in the Harpoon list.
- `<leader>2`: Navigate to the second file in the Harpoon list.
- `<leader>3`: Navigate to the third file in the Harpoon list.
- `<leader>4`: Navigate to the fourth file in the Harpoon list.

### **Buffer Navigation**

- `<leader>p`: Navigate to the previous buffer in the Harpoon list.
- `<leader>n`: Navigate to the next buffer in the Harpoon list.

---

## **nvim-cmp Keymaps**

### **Autocompletion**

- `<C-j>`: Select the next item.
- `<C-k>`: Select the previous item.
- `<CR>`: Confirm the selected completion.
- `<C-c>`: Manually trigger completion.

### **Snippet Navigation**

- `<C-l>`: Jump to the next snippet placeholder.
- `<C-h>`: Jump to the previous snippet placeholder.

### **Tab Navigation**

- `<Tab>`: Select the next item or expand a snippet.
- `<S-Tab>`: Select the previous item or jump to the previous snippet placeholder.

---

## **Usage Tips**

- Use `<Space>` as the leader key to access most custom keybindings.
- For session management, use `<leader>asr`, `<leader>ass`, and `<leader>asa`.
- Use `<C-_>`, `<C-c>`, and `<C-/>` to toggle comments.
- Use `<leader>M` and `<leader>m` to manage files with Harpoon.
- Use `<C-j>`, `<C-k>`, and `<CR>` for autocompletion with nvim-cmp.
