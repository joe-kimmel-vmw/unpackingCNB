set -eux

echo "setting up directories"
mkdir -p apps/bash-script
mkdir -p layers
echo "copying from buildpacks/samples repo - the CNB_SAMPLES_PATH env var must point to the root of that repo"
cp -r "$CNB_SAMPLES_PATH/apps/bash-script/" ./apps/bash-script
