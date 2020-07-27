echo "Clearing cache..."
sudo find ~/.cache/ -type f -atime +100 -delete
echo "Vaccuming journal files..."
sudo journalctl --vacuum-time=2weeks
echo "Checking updates..."
pamac checkupdates -a
echo "Upgrading packages..."
pamac upgrade -a
echo "Removing orphaned packages..."
pamac list -o
pamac remove -o
echo "Cleaning pamac cache..."
pamac clean --keep 3
