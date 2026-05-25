#### **➡️ Color Codes:**

In this script, colors are added using ANSI escape codes. These special codes tell the terminal to print certain text in different colors.

```bash
Cyan="\e[36m"
Purple="\e[35m"
Reset="\e[0m"
```

Here, `\e[36m` means cyan and `\e[35m` means purple.

So whenever we write `${Cyan}`, the terminal starts printing in cyan. Whenever we write `${Purple}`, it starts printing in purple.

Example:

```bash
echo "${Cyan}╭────────────────────╮${Reset}"
```

This prints the top border of the box in cyan.

---

#### **➡️ Why `Reset` is needed:**

`Reset` stops the color effect.

```bash
Reset="\e[0m"
```

If we do not use `${Reset}`, the terminal may keep printing everything in the same color, even after a line finishes.

---

#### **➡️ Why `while true` is used:**

The clock needs to run continuously. For that, we use an infinite loop.

```bash
while true
do
    commands
done
```

In this script:

```bash
while true
do
	clear
	Time=$(date +"%I : %M : %S")
	...
	sleep 1s
done
```

`true` always means “yes”.

So `while true` means: keep running forever.

Without this loop, the script would show the time only once and then stop.

With this loop, it refreshes the time every second.

To stop it manually:

```bash
Ctrl + C
```

---

#### **➡️ The `date` Command**

In this script, the `date` command retrieves the current system time:

```bash
Time=$(date +"%I : %M : %S")
```

This means: run `date` with the given format and store the output in the variable `Time`.

`Time` is a variable, for example:

```bash
Time=...
```

The command inside `$()` runs first:

```bash
date +"%I : %M : %S"
```

Then its output is assigned to `Time`. For example, if the current time is 08:45:12:

```bash
Time="08 : 45 : 12"
```

---

---

**⭐ Using 12-hour format:**

In this code, `%I` displays the hour in 12-hour format:

```bash
Time=$(date +"%I : %M : %S")
```

Example output:

```bash
08 : 45 : 12
```

---

**⭐ Using 24-hour format:**

To display the hour in 24-hour format, use `%H` instead of `%I`:

```bash
Time=$(date +"%H : %M : %S")
```

Example output:

```bash
20 : 45 : 12
```

Here, `20` means 8 PM in 24-hour time.

---

**⭐ Adding AM or PM:**

To include AM or PM, use `%p`:

```bash
Time=$(date +"%I : %M : %S %p")
```

Example output:

```bash
08 : 45 : 12 PM
```

To print only AM or PM, use:

```bash
Time=$(date +"%p")
```

Example output:

```bash
PM
```

---

**⭐ Meaning of `%I`, `%M`, and `%S`:**

| Format | Meaning | Example |
| --- | --- | --- |
| `%I` | Hour in 12-hour format | `08` |
| `%H` | Hour in 24-hour format | `20` |
| `%M` | Minutes | `45` |
| `%S` | Seconds | `12` |
| `%p` | AM or PM | `PM` |

---

#### **➡️ Why Unicode box characters are used:**

**Unicode box-drawing characters are special symbols used to create shapes, borders, and boxes in the terminal.**

In this clock script, characters like `╭`, `─`, `╮`, `│`, `╰`, and `╯` are used to design the outer frame of the clock.

They do not affect the logic of the program. Their main purpose is to improve the visual appearance of the output.

Because of these characters, the clock looks like a proper digital clock box instead of normal plain text.

---

**⭐ Unicode characters used in this code:**

| Character | Name | Unicode Value | Use in Script |
| --- | --- | --- | --- |
| `╭` | Box drawings light arc down and right | `256d` | Top-left corner |
| `─` | Box drawings light horizontal | `2500` | Horizontal border |
| `╮` | Box drawings light arc down and left | `256e` | Top-right corner |
| `│` | Box drawings light vertical | `2502` | Side border |
| `╰` | Box drawings light arc up and right | `2570` | Bottom-left corner |
| `╯` | Box drawings light arc up and left | `256f` | Bottom-right corner |

---

**⭐ How to print Unicode characters in Vim/Vi:**

In Vim or Vi insert mode, Unicode characters can be typed using their Unicode value.

Steps:

```bash
Press Ctrl + V
Press u
Type the Unicode value
Press Enter (if needed)
```

Example for printing `─`:

```bash
Ctrl + V
u
2500
```

This will print:

```bash
─
```

Example for printing `│`:

```bash
Ctrl + V
u
2502
```

This will print:

```bash
│
```

So if you want to type the top border manually in Vim:

```bash
╭────────────────────╮
```

You can use:

```bash
Ctrl + V u 256d  for ╭
Ctrl + V u 2500  for ─
Ctrl + V u 256e  for ╮
```

---

#### **➡️ Why `sleep 1s` is needed:**

The script is inside an infinite loop, so it runs again and again.

```bash
sleep 1s
```

This line pauses the script for 1 second before the next refresh.

In the code:

```bash
while true
do
	clear
	Time=$(date +"%I : %M : %S")
	...
	sleep 1s
done
```

Without `sleep 1s`, the loop would run extremely fast.

The screen would clear and redraw many times per second, causing flickering and unnecessary CPU usage.

So `sleep 1s` makes the clock update like a real digital clock: once every second.

This terminal clock script works by using ANSI color codes for styling, `Reset` to stop color effects, `while true` to keep the clock running forever, Unicode box-drawing characters to create the frame, and `sleep 1s` to refresh the clock every second without flickering or wasting CPU power.

---

#### **➡️ How to Create and Run the Project in Vim**

First, create a new file named `clock.sh` in Vim.

```bash
vim clock.sh
```

Press `i` to enter Insert mode, then paste or type the clock script into the file.

When you are done, save and exit Vim:

```bash
Esc
:wq # (shift + ; = :)
Enter
```

`:wq` means “write and quit”. It saves the file and closes Vim.

**⭐ Method 1: Run using Bash or Zsh directly**

After creating the file, you can run it with:

```bash
bash clock.sh
```

But since the script uses zsh in the shebang:

```bash
#!/bin/zsh
```

a better command is:

```bash
zsh clock.sh
```

This method does not require executable permissions because you are explicitly telling the terminal which shell should run the file.

**⭐ Method 2: Run as an executable file**

Before running the file as an executable, check whether it has execute permissions:

```bash
ls -l clock.sh
```

Example output:

```bash
-rw-r--r-- 1 user user 300 May 25 clock.sh
```

Here, `rw-` means the file has read and write permissions, but not execute permissions.

If there is no `x`, the file is not executable.

To add execute permissions:

```bash
chmod +x clock.sh
```

Now check again:

```bash
ls -l clock.sh
```

Example output:

```bash
-rwxr-xr-x 1 user user 300 May 25 clock.sh
```

Now the `x` indicates the file is executable.

Run it with:

```bash
./clock.sh
```
