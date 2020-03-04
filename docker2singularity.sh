mkdir -p /tmp/docker2singularity
docker run \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /tmp/docker2singularity:/output \
    --privileged -t --rm \
    quay.io/singularity/docker2singularity \
    ${1:-deepvariant_gpu:latest}

mkdir -p singularity_images
mv /tmp/docker2singularity/* singularity_images
