# Lean sheets: continuity and derivatives

Lean problems for the course Analyysi 2 at the University of Helsinki.

The sheets (each link opens the file in the web editor):

- [`Demo.lean`](https://live.lean-lang.org/#url=https%3A%2F%2Fraw.githubusercontent.com%2Fl-oksanen%2Fanalysis2%2Fmain%2FDemo.lean): the lecture demo, with solutions
- [`Problems.lean`](https://live.lean-lang.org/#url=https%3A%2F%2Fraw.githubusercontent.com%2Fl-oksanen%2Fanalysis2%2Fmain%2FProblems.lean): problems for the first session, in class
- [`Homework.lean`](https://live.lean-lang.org/#url=https%3A%2F%2Fraw.githubusercontent.com%2Fl-oksanen%2Fanalysis2%2Fmain%2FHomework.lean): homework

There are two ways to work on the sheets. The web editor is enough for
the in-class problems.

## 1. Web editor (no installation)

1. Open a sheet with its link above. The file opens in the web editor
   https://live.lean-lang.org.
2. Wait until the status bar stops saying that Lean is busy. The first
   load of Mathlib takes a minute.
3. Keep the *Infoview* panel visible. It shows the goal at the cursor and
   the errors.

The editor does not save your work on a server: it keeps your code in
the address of the page. Bookmark that address, or copy your code into
a file, before you close the tab.

## 2. Local installation (for the homework and AI agents)

This needs about 6 GB of disk space and a good internet connection.
Do it at home, not during the lecture.

1. Install Lean and VS Code as described in
   https://lean-lang.org/install/.
2. Download this repository: either clone it with git,

       git clone https://github.com/l-oksanen/analysis2

   or use *Code → Download ZIP* on GitHub and unpack it.
3. In a terminal in the folder `analysis2`, download the compiled
   Mathlib:

       lake exe cache get

4. Open the folder in VS Code and open `Problems.lean`.

### Leanstral

Leanstral is Mistral's AI agent for Lean. It runs inside *Mistral Vibe*,
a terminal program, and works on the files of a local Lean project like
the one above. See https://mistral.ai/news/leanstral/ and Mistral's
documentation for how to install Vibe and start the Lean agent.
Check what is free at the time you sign up.

## Other AI assistants

General chatbots can help too. For instance, Claude Opus 5.5 is very good at Lean. Paste the error message back to them,
or read it yourself: understanding Lean's messages is part of the course.
