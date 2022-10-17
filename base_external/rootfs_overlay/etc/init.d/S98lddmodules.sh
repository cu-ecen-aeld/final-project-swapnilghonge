#! /bin/sh

case "$1" in
    start)
        modprobe hello.ko
        
        /usr/bin/module_load faulty
        /usr/bin/scull_load
        ;;
    stop)
        rmmod hello.ko

        /usr/bin/module_unload faulty
        /usr/bin/scull_unload
        ;;
    *)
    exit 1
esac

exit 0
