# README

Reproduces a bug where the Rspec spec runner fails to exit and hangs
if there is a spec in the suite that forks processes:

```
  $ bin/rspec
```
The above command will never exit.

Note that the Chrome process remains running at the end. Killing
Chrome manually causes the rspec runner to exit.
