# balena-node-red

This application consists of 2 services:
* `node-red` = A [Node-RED](https://nodered.org/) application that can be accessed remotely via the balena [publicURL](https://balena.io/docs/learn/manage/actions/#enable-public-device-url).  It consists of the following 2 flows (or tabs): 
  * `Supervisor`: uses [node-red-contrib-balena](https://github.com/balena-io-projects/node-red-contrib-balena) to interact with the  [balena-supervisor](https://balena.io/docs/reference/supervisor/supervisor-api/). 
  * `GPIO`: simple flow shows how the node [node-red-node-pigpiod](https://flows.nodered.org/node/node-red-node-pi-gpiod) can be used to read GPIO pins from the raspberry pi.
* `pigpiod` = this service runs the daemon [pigpiod](http://abyz.me.uk/rpi/pigpio/pigpiod.html).  This daemon must be running if you want to interact with the GPIO pins of your raspberry pi using the Node-RED node [node-red-node-pigpiod](https://flows.nodered.org/node/node-red-node-pi-gpiod)

## Configure node-red service via [environment variables](https://balena.io/docs/learn/manage/serv-vars/)
Variable Name | Default | Description
------------ | ------------- | -------------
PORT | `1880` | the port that exposes the Node-RED editor.  Note that host port 80 is mapped to 1880 so that Node-RED editor can also be accessed through the Balena publicURL if activated.
USERNAME | `none` | the Node-RED admin username
PASSWORD | `none` | the Node-RED admin password [hash](https://nodered.org/docs/security#generating-the-password-hash)

You **must** set the `USERNAME` and `PASSWORD` environment variables to be able to save or run programs in Node-RED.  
The hash for the `PASSWORD` variable can be generated using the [`node-red-admin`](https://nodered.org/docs/node-red-admin)
command line tool. Instructions for generating a password hash can be found in
the [Node-RED documentation](https://nodered.org/docs/security#generating-the-password-hash).  
More information about using and setting environment variables can be found in
the [balena docs](https://balena.io/docs/learn/manage/serv-vars/).

## License

Copyright 2016 balena Ltd.

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

<http://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
