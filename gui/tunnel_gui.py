import sys, os

def enable_tunnel(ssh_key_path, queue_DNS = "queue.ofh.priv", barenboim_IP = "54.148.217.40"):
    os.system("eval $(ssh-agent)")
    os.system("ssh-add " + ssh_key_path)
    os.system("ssh -A -L 15672:" + queue_DNS + ":15672 ubuntu@" + barenboim_IP)


if __name__ == "__main__":
    """
    Creates an SSH tunnel between the executing machine and a rabbitmq instance.
    First command line argument: path to relevant SSH key
    (Optional) second command line argument: private DNS of queue.  (Default: queue.ofh.priv)
    (Optional) third command lien argument IP of barenboim (Default: 54.148.217.40)
    """
    if len(sys.argv) not in [2, 4]:
        print "Usage: python tunnel_gui.py /path/to/ssh/key DNS_of_queue IP_of_barenboim"
    elif len(sys.argv) == 2:
        enable_tunnel(sys.argv[1])
    elif len(sys.argv) == 4:
        enable_tunnel(sys.argv[1], sys.argv[2], sys.argv[3])
