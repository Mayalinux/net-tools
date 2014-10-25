NET-TOOLS
======

# Original project page
  [http://net-tools.sourceforge.net/](http://net-tools.sourceforge.net/ "Project page")

# Create a *config.h.patch* file
  Run `make config`, copy your *config.h* flie to another location, edit *config.h* and `diff -u0 config.h.orig config.h >config.h.patch`.

# Notes
  If you fork this, be sure to edit config.h.patch accordingly (better if you setup your own) to set package capabilities.
  
  The original package was not designed for parallel builds, so parallel building is discouraged.

  **Not all the code has been tested, so you might end up patching this yourself. If so, please open an issue on the Mayalinux/net-tools git project.**
