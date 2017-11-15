<img align="right" src="html/images/PSICK-logo-200x200.png" />

## NOTE

This branch of psick control repo is intended to be used only in Vagrant environments,
on PuppetServer systems where Code Manager / r10k is configured.

Puppet agents pointing to puppet master under Vagrant (as in the lab Vagrant environment)
can ue the host (special) environmnent to directly use the local code on the Host where
the Puppet VM is running (that code in mounted in the /vagrant_host directory).

