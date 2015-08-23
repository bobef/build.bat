build.bat build system for Sublime Text
=======================================

This is the build system I use for all my projects. In short with a press of
key it starts a file called `build.bat` or `build.sh` in your project, whatever
you put in this file is up to you. It is flexible and very easy to setup and
doesn't require to keep project files, workspaces or anything of this sort of
complications. Just load the files you need from the directory you need. For
me this is much more convenient than maintaining Sublime Text projects and
even more so than setting up projects in any IDE.

__The build system works like this:__
* Select build.bat build system.
* Press `F7`.
* It will try to execute `build.bat` on Windows or `build.sh` on Unix if it is
  found in the directory of the active file, passing `build` as first argument.
* If not found it will look for this file up the directory tree.
* This way one can run different tools for different parts of the project and
  also run the top level tools of the project from any file.

__The build system has several variants:__
* Press `F5` will pass `run` as first argument to the build script.
* Press `Shift+F7` will pass `debug` as first argument to the build script.
* Press `F8` will pass `tests` as first argument to the build script.
* Press `F9` will pass `user` as first argument to the build script.

__Use cases:__
* I use this so I run my nodejs apps with `F7` and run the unitests
  with `F8` and have one extra key just in case.
* Also for compiled languages I prefer to manually setup a batch file to
  compile my sources, I don't like complicated things like makefiles.
* I've used it to edit file in Sublime Text on Windows and made the batch file
  so it will run a command in a VirtualBox Linux machine and tell me the
  output back in Sublime.

Authors
=======
Borislav Peev (borislav.asdf at gmail dot com)
