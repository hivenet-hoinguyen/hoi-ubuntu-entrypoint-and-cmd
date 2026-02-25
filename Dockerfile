FROM ubuntu:latest
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates && rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["/bin/bash","-lc","echo ENTRYPOINT_RAN; exec \"$@\""]
CMD ["bash","-lc","echo CMD_RAN; sleep 600"]
