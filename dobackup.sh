TARGET=$1

BASENAME=$(basename ${TARGET})
BASEPATH="${TARGET%/*}"

DATE=$(date +%F_%H-%M)
BACKUPNAME="${BASENAME}_${DATE}.tar.gz"
BACKUPPATH="${PWD}/${BACKUPNAME}"

echo ${BASEPATH}

tar -C ${BASEPATH} -cvf ${BACKUPPATH} ${BASENAME}