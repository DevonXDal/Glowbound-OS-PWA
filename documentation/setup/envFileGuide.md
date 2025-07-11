# .env File Guide
*This guide helps explain what environment variables are used for the Docker containers.*

## POSTGRES_PASSWORD=
The admin account by default is simply `postgres`, use this field to set a strong, secure password.

## TAILSCALE_AUTHKEY=
Create an account at [Tailscale Website](https://login.tailscale.com) or log in.

To get your key, skip the introduction guide and navigate to [Tailscale Auth Keys](https://login.tailscale.com/admin/settings/keys)
Then click on the `Generate auth key...` button that shows by **Auth keys** and set it to reusable if you want multiple devices to be able to make use of that same key.

## VPN_ONLY=
(Acceptable Values): `true` and `false` 
If **VPN_ONLY** is set to true, then all traffic to the Glowbound OS based system must flow through the VPN.
Otherwise, the VPN remains an optional security measure.

## PWA_PORT=
Set to `80` if **VPN_ONLY** is `false`
Set to `127.0.0.1:80` if **VPN_ONLY** os `true`

