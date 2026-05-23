# Latest news

2026: forked at 0.9.6 and added a few improvements.

2020: 0.9.6 is now the current development version (in master for now),
use TBK fork if you want to use a stable checkout now, but use this repository
if you want to contribute to AQEMU's future.

Building using meson/ninja is recommended now.
See the changelog for all the new features that will work in the next stable
release, I'm most exciting about AQEMU being turned into a manager for VM services.
This means you can close the AQEMU UI and your VMs will keep running, also you
can restart the UI and manage running VMs you previously started with AQEMU.
And even better, you're able to start/stop VMs from the command line without
the need for a UI. Giving you a lot more flexibility, and hopefully increasing
the audience for AQEMU. As you may have guessed there are still many issues with this
new set of features, therefore a stable release can't be provided currently.
I was working on those features years ago, when I had to stop due various reasons,
but now I plan to bring the work to an end, hopefully with the help of the community.

Example how to build using meson/ninja:
```
meson builddir
cd builddir
ninja
./aqemu
```

![ScreenShot](https://i.imgur.com/PkvFUEk.png)

As an alternative to cmake the meson build system is also supported:
https://github.com/mesonbuild/meson
