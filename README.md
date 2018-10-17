# Dockerized Rancher 2 CLI tool, with kubectl

## Configuration

You may either mount a configuration file (e.g., from a
previous `rancher login` command) at `/root/.rancher/cli2.json`,
or set the `RANCHER_URL`, `RANCHER_TOKEN`, `RANCHER_SECRETKEY`
and `RANCHER_PROJECT` environment variables, which will be
written into a bare-bones configuration prior to running the
command provided.
