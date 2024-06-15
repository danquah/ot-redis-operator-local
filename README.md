# Local setup for testing out the OpsTree Redis Operator

See the [operators documentation](https://ot-container-kit.github.io/redis-operator/) for more details.

## How to get started

Pre-requisites:

- [Docker](https://docs.docker.com/get-docker/)
- [Kind](https://kind.sigs.k8s.io/docs/user/quick-start/)
- [Kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

```bash
# Tear down any existing kind cluster and create a new 3-node cluster.
./reset.sh

# When done, forward prometheus and grafana ports to localhost.
./forward.sh
```

You can now access grafana via the echoed addresses using the specified credentials.
