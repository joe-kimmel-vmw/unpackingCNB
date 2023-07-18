set -eux

$CNB_LIFECYCLE_PATH/detector -log-level debug -layers="./layers" -order="./order.toml" -buildpacks="./buildpacks" -app apps/bash-script
