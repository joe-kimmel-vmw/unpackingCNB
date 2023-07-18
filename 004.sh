set -eux

# the order.toml is basically a builder.toml without the stack section.
# Additionally we'll fix the relative paths with a sed (they were ../.. and we just want them to be ./)
cat "$CNB_SAMPLES_PATH/builders/jammy/builder.toml" | grep -v -i "stack" | sed 's/\.\.\/\.\./\./' > order.toml

mkdir -p buildpacks

for f in `ls $CNB_SAMPLES_PATH/buildpacks | grep -v README`
do
	mkdir -p ./buildpacks/samples_"$f"/0.0.1
	cp -r "$CNB_SAMPLES_PATH/buildpacks/$f/" ./buildpacks/samples_"$f"/0.0.1/
done
