# balena-node-red

A Node-RED application with [balena-supervisor](https://balena.io/docs/reference/supervisor/supervisor-api/) flow [support](https://github.com/balena-io-projects/node-red-contrib-balena), can be managed remotely via balena [publicURL](https://balena.io/docs/learn/manage/actions/#enable-public-device-url)

You can deploy this project to a new balenaCloud application in one click using the button below:

[![](https://balena.io/deploy.svg)](https://dashboard.balena-cloud.com/deploy?repoUrl=https://github.com/balenalabs/balena-node-red)

Or, you can create an application in your balenaCloud dashboard and balena push this code to it the traditional way.

## Configure via [environment variables](https://balena.io/docs/learn/manage/serv-vars/)

| Variable Name  | Default  | Description                                             |
| -------------- | -------  | ------------------------------------------------------- |
| PORT           | `80`     | the port that exposes the Node-RED UI                   |
| USERNAME       | `balena` | the Node-RED admin username                             |
| PASSWORD       | `balena` | the Node-RED admin password                             |
| ENCRIPTION_KEY | `balena` | the encription key used to store your credentials files |
| HTTP_ROOT      | `/`      | default HTTP root. can be overridden for reverse proxy  |

You **must** set the `USERNAME` and `PASSWORD` environment variables to be able to save or run programs in Node-RED.  
More information about using and setting environment variables can be found in
the [balena docs](https://balena.io/docs/learn/manage/serv-vars/).

## License

Copyright 2016 balena Ltd.

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

<http://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
