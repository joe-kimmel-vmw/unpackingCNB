set -eux

echo "To make a runnable image we just need a little launcher config"

cat << EOF > ./layers/samples_hello-moon/launch.toml
[[processes]]
  type = "shell"
  command = "./app.sh"
EOF

# note that app.sh already existed in the workspace, there was just nothing telling the launcher to run it
