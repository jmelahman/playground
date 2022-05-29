# playground

https://github.com/bazelbuild/rules_python/issues/716

```
$ ./repro.bash
Unable to find image 'lahmanja/arch:v1.0.0' locally
v1.0.0: Pulling from lahmanja/arch
b65db44913f6: Pull complete
beb98d5a80d3: Pull complete
ef59f96cfb35: Pull complete
93efd2a0e179: Pull complete
73ede4e4f4e4: Pull complete
3511e1da7f29: Pull complete
Digest: sha256:7ec8b75098c5ed537e1c21953513bd81219b7951f387b0020d0e6f235eb2def1
Status: Downloaded newer image for lahmanja/arch:v1.0.0
Extracting Bazel installation...
Starting local Bazel server and connecting to it...
Loading:
Loading: 0 packages loaded
Loading: 0 packages loaded
Loading: 0 packages loaded
Loading: 0 packages loaded
Loading: 0 packages loaded
Loading: 0 packages loaded
Loading: 0 packages loaded
Loading: 0 packages loaded
INFO: Repository my_deps instantiated at:
  /src/workspace/WORKSPACE:24:10: in
  /root/.cache/bazel/_bazel_root/a08c2e4811c846650b733c6fc815a920/external/rules_python/python/pip.bzl:206:19: in pip_parse
Repository rule pip_repository defined at:
  /root/.cache/bazel/_bazel_root/a08c2e4811c846650b733c6fc815a920/external/rules_python/python/pip_install/pip_repository.bzl:323:33: in
ERROR: An error occurred during the fetch of repository 'my_deps':
   Traceback (most recent call last):
        File "/root/.cache/bazel/_bazel_root/a08c2e4811c846650b733c6fc815a920/external/rules_python/python/pip_install/pip_repository.bzl", line 195, column 13, in _pip_repository_impl
                fail("rules_python failed: %s (%s)" % (result.stdout, result.stderr))
Error in fail: rules_python failed:  (/root/.cache/bazel/_bazel_root/a08c2e4811c846650b733c6fc815a920/external/python3_9_x86_64-unknown-linux-gnu/bin/python3: error while loading shared libraries: libcrypt.so.1: cannot open shared object file: No such file or directory
)
ERROR: /src/workspace/WORKSPACE:24:10: fetching pip_repository rule //external:my_deps: Traceback (most recent call last):
        File "/root/.cache/bazel/_bazel_root/a08c2e4811c846650b733c6fc815a920/external/rules_python/python/pip_install/pip_repository.bzl", line 195, column 13, in _pip_repository_impl
                fail("rules_python failed: %s (%s)" % (result.stdout, result.stderr))
Error in fail: rules_python failed:  (/root/.cache/bazel/_bazel_root/a08c2e4811c846650b733c6fc815a920/external/python3_9_x86_64-unknown-linux-gnu/bin/python3: error while loading shared libraries: libcrypt.so.1: cannot open shared object file: No such file or directory
)
ERROR: no such package '@my_deps//': rules_python failed:  (/root/.cache/bazel/_bazel_root/a08c2e4811c846650b733c6fc815a920/external/python3_9_x86_64-unknown-linux-gnu/bin/python3: error while loading shared libraries: libcrypt.so.1: cannot open shared object file: No such file or directory
)
INFO: Elapsed time: 12.036s
INFO: 0 processes.
FAILED: Build did NOT complete successfully (0 packages loaded)
ERROR: Build failed. Not running target
FAILED: Build did NOT complete successfully (0 packages loaded
```
