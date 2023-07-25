set -eux

echo "in order to incorporate the launch.toml from the previous step, we need to re-run the same build command again"
./008.sh

echo "note that we've added one arg to the exporter to configure the launcher process type (default value is "web")"

$CNB_LIFECYCLE_PATH/exporter --log-level debug -launch-cache "./cache" -daemon -cache-dir "./cache"  -analyzed "./layers/analyzed.toml" -group "./layers/group.toml" -layers="./layers" -app "./workspace" -launcher="$CNB_LINUX_LAUNCHER_PATH" -process-type="shell" apps/bash-script | tee exporter_output

IMAGE_ID=$(cat exporter_output | grep "Image ID" | cut -d":" -f2)

docker run $IMAGE_ID
