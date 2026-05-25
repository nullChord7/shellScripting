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

In this clock script, characters like `╭`, `─`, `╮`, `│`, `╰`, and `╯` are used to draw the outer frame of the clock.

They do not affect the program’s logic. Their main purpose is to improve the visual appearance of the output.

Because of these characters, the clock looks like a proper digital clock display instead of plain text.

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

---

### **➡️ How to Create and Run the Project in Vim**

To create the clock project, open a new file named `clock.sh` in Vim.

```bash
vim clock.sh
```

After Vim opens, press `i` to enter **Insert mode**.

Now paste or type the clock script into the file.

When you are done, save and exit Vim using:

```bash
Esc
:wq   # shift + ; gives :
Enter
```

Here, `:wq` means **write and quit**.

In other words, it saves the file and closes Vim.

**⭐ Method 1: Run using Bash or Zsh directly**

After saving the file, you can run the script like this:

```bash
bash clock.sh
```

But in this project, the script starts with:

```bash
#!/bin/zsh
```

That means the script is written for the **Zsh shell**.

So a better way to run it is:

```bash
zsh clock.sh
```

This method is simple because you do not need to change file permissions.

You are directly telling the terminal:

“Run this file using Zsh.”

**⭐ Method 2: Run as an executable file**

If you want to run the script like a proper executable program, first check its permissions.

```bash
ls -l clock.sh
```

Example output:

```bash
-rw-r--r-- 1 user user 300 May 25 clock.sh
```

Here, there is no `x` in the permission section.

That means the file can be read and edited, but it cannot be executed directly yet.

So if you try to run:

```bash
./clock.sh
```

it may not work until you add execute permission.

To add execute permission, use:

```bash
chmod +x clock.sh
```

Now check the permissions again:

```bash
ls -l clock.sh
```

Example output:

```bash
-rwxr-xr-x 1 user user 300 May 25 clock.sh
```

Now the `x` is visible.

That means the file has execute permission.

Finally, run the script using:

```bash
./clock.sh
```

Now the terminal will treat `clock.sh` like an executable program.