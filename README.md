<h1 align="center">Colortest</h1>
<p align="center">Customizable Colortest</p>
<p align="center"><a href="https://github.com/info-mono/colortest"><img src="https://user-images.githubusercontent.com/43980777/185287348-305e05a0-e9ab-42a8-8e31-a8bf09e16d66.png"></a></p>
<p align="center">
  <a href="https://github.com/info-mono/colortest/blob/main/LICENSE"><img src="https://img.shields.io/github/license/info-mono/colortest?labelColor=383838&color=585858&style=for-the-badge" alt="License: GPL-3.0"></a>
  <a href="https://gist.github.com/NNBnh/9ef453aba3efce26046e0d3119dab5a7#development-completed"><img src="https://img.shields.io/badge/development-completed-%23585858.svg?labelColor=383838&style=for-the-badge&logoColor=FFFFFF" alt="Development completed"></a>
</p>

## 💡 About

**Colortest** is a tool to quickly show all your terminal colors.

Try it:

```sh
sh -c "$(curl -fsLS https://info-mono.github.io/colortest)"
```

```sh
sh -c "$(curl -fsLS https://info-mono.github.io/colortest)" -- <options>
```

You can just `curl` some pre-made colortest:

```sh
curl -fsLS https://info-mono.github.io/colortest/<file>
```

E.g:

```sh
curl -fsLS https://info-mono.github.io/colortest/default
```

> **Note** The full list of pre-made colortest files can be found [here](https://github.com/info-mono/colortest/tree/main/docs).

## 🚀 Setup

### 🧾 Dependencies

- [POSIX compliance shell (`sh`, `bash`, `zsh`, ...)](https://wikipedia.org/wiki/Unix_shell)

### 📥 Installation

#### 🔧 Manually

Option 1: using `curl`

```sh
curl https://raw.githubusercontent.com/info-mono/colortest/main/bin/colortest > ~/.local/bin/colortest
chmod +x ~/.local/bin/colortest
```

Option 2: using `git`

```sh
git clone https://github.com/info-mono/colortest.git ~/.local/share/colortest
ln -s ~/.local/share/colortest/bin/colortest ~/.local/bin/colortest
```

#### 📦 Package manager

For [Bpkg](https://github.com/bpkg/bpkg) user:

```sh
bpkg install info-mono/colortest
```

For [Basher](https://github.com/basherpm/basher) user:

```sh
basher install info-mono/colortest
```

## ⌨️ Usage

Run `colortest` in the terminal:

```sh
colortest <options>
```

```console
Options:
  -h, --help                     Print this help message
  -s, --string <string>          Set print string
  -S, --separator <separator>    Set separator string
  -f, --fg-modes <fg-modes>      Set foreground modes list
                                 (normal, bright, bold, both)
  -b, --bg-modes <bg-modes>      Set background modes list
                                 (normal, bright)
  -F, --fg-colors <fg-colors>    Set foreground colors list
                                 (0, 1, 2, 3, 4, 5, 6, 7, none, label)
  -B, --bg-colors <bg-colors>    Set background colors list
                                 (0, 1, 2, 3, 4, 5, 6, 7, none, label)
```

> **Note** List are separated by space.

<br><br><br><br>

---

> <h1 align="center">Made with ❤️ by <a href="https://github.com/info-mono"><code>@info-mono</code></a></h1>
>
> <p align="center"><a href="https://www.buymeacoffee.com/nnbnh"><img src="https://img.shields.io/badge/buy_me_a_coffee%20-%23F7CA88.svg?logo=buy-me-a-coffee&logoColor=333333&style=for-the-badge" alt="Buy Me a Coffee"></a></p>
