work in progress. 

a series of scripts and commits that show step-by-step how to run the CNB lifecycle executables directly for each phase (without the pack tool).


##Setup

Create the following environment variables pointing to locations in your local filesystem.

- `CNB_SAMPLES_PATH` : points to a local checkout of the buildpacks/samples git repo. For me:  
```export CNB_SAMPLES_PATH="`pwd`/../buildpacks-samples"```

- `CNB_LIFECYCLE_PATH` : points to a local build of lifecycle executables runnable in your environment. For me, doing darwin amd64 builds in the lifecycle repo: 
```export CNB_LIFECYCLE_PATH="`pwd`/../lifecycle/out/darwin-amd64/lifecycle"```


- `CNB_LINUX_LAUNCHER_PATH` path to the **linux** executable (probably linux-amd64) for the launcher, that will be put into your app's container and launch the app from within the container. For me:
```export CNB_LINUX_LAUNCHER_PATH=`pwd`/../lifecycle/out/linux-amd64/lifecycle/launcher```
