node default {
	notify {"the default puppet configuration ": }
}

node /^v3/ {
	notify {"we have matched the node": }
}
node /^v3.hyper.local/ {
	notify {"we have matched the node v3.hyper.local": }
}
