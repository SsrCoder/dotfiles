# dotfile

个人配置文件管理，通过软链接将配置目录挂到 `$XDG_CONFIG_HOME`（默认 `~/.config`）。

## 使用

```bash
./setup.sh <name>
```

支持的配置：

| 参数 | 目标 |
|------|------|
| `vim` / `nvim` | Neovim 配置 |
| `ghostty` | Ghostty 终端配置 |
| `fish` | Fish shell 配置 |

## 示例

```bash
./setup.sh nvim     # 链接 nvim 配置
./setup.sh fish     # 链接 fish 配置
```
