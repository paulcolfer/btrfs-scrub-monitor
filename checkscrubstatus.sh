DRIVE_COUNT=8

# all drives need to be mounted in the same folder with a sequential numbering scheme
MOUNT_LOCATION=/mnt/drives/drive

for ((drive = 1 ; drive <= $DRIVE_COUNT ; drive++)); do
        echo "Drive $drive"
        btrfs scrub status $MOUNT_LOCATION$drive | grep "Bytes scrubbed:\|Rate:"
done
