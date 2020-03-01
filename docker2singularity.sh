mkdir -p /tmp/docker2singularity
docker run \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /tmp/docker2singularity:/output \
    --privileged -t --rm \
    quay.io/singularity/docker2singularity \
    deepvariant_gpu:latest

# output will be in /tmp/docker2singularity

