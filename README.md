## js-rancher

Simple `docker-compose` file for standing up a [Rancher V1][rancher-url]
instance with HTTPS courtesy of [LetsEncrypt][letsencrypt-url].

### Requirements

* Docker version >= 18, and Docker Compose version >= 1.18
* A publicly accessible, fully qualified domain name ([FQDN][fqdn]). See e.g.,
  DigitalOcean's [tutorial][do-dns] if you're unfamiliar with how to set this
  up.

### Usage

First, replace the template variables in `.env` with your hostname and email.

Then, to launch the service:

```bash
# Clone the repo.
$ git clone https://github.com/jessestuart/js-rancher
$ cd js-rancher
# This will create a new external network (`nginx-net`), and stand up
# the three containers required to boot the app.
$ make start
```

To inspect the logs:

```bash
$ docker-compose logs -f
```

To tear the service down:

```bash
$ make destroy
```

[do-dns]: https://www.digitalocean.com/community/tutorials/how-to-set-up-a-host-name-with-digitalocean
[fqdn]: https://en.wikipedia.org/wiki/Fully_qualified_domain_name
[letsencrypt-url]: https://letsencrypt.org
[rancher-url]: https://rancher.com/rancher/
