#include "HsFFI.h"
#include "Rts.h"
#include <stdio.h>
#include <signal.h>

static void flib_init() __attribute__((constructor));
static void flib_init() {
  static char *argv[] = { "libGodotHaskellPlugin.so", 0 }, **argv_ = argv;
  static int argc = 1;
  RtsConfig conf = defaultRtsConfig;
  conf.rts_opts_enabled = RtsOptsAll;
  hs_init_ghc(&argc, &argv_, conf);
}

static void flib_fini() __attribute__((destructor));
static void flib_fini() {
  hs_exit();
}
