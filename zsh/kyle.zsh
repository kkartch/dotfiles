
# Elixir IEX history enable
export ERL_AFLAGS="-kernel shell_history enabled"

rpc_prod() { ssh -t kyle@192.168.4.174 "microk8s kubectl exec -it -n grotto-api deploy/api-deployment -- /app/bin/grotto rpc $(printf %q "$1")"; }

