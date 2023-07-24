set -eux

# these env vars will be the same across all phases so its helpful to export them
# NOTE for the variables to persiset you may have to `source 002.sh` rather than execute it directly
export CNB_USER_ID=1000
export CNB_GROUP_ID=1000
export CNB_PLATFORM_API=0.12
