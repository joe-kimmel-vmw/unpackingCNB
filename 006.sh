set -eux

mkdir -p cache

$CNB_LIFECYCLE_PATH/restorer -log-level debug -layers="./layers" -group="./layers/group.toml" -cache-dir="./cache" -analyzed="./layers/analyzed.toml"

echo "the cache dir will be empty so its not in git but the restorer made some subfolders, that are also empty:"
ls cache
