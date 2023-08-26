# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Next Steps

- Open a new terminal and run `cds watch` 
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/schema.cds](db/schema.cds).


## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.

## Important commands and ressources

* npm add sqlite3 -D
* cds-ts deploy --to sqlite:my.sqlite
* cds add typer
* https://cap.cloud.sap/docs/advanced/odata , e.g. for PATCH Entity Collection with Mass Data
* https://cap.cloud.sap/docs/cds/common#type-currency
* https://github.com/SAP-samples/btp-full-stack-typescript-app/blob/main/tsconfig.json
* cds-ts watch
* https://marketplace.visualstudio.com/items?itemName=SAPSE.sap-ux-fiori-tools-extension-pack
* VS Code Task `Open Template Wizard`
* VS Code Task `Fiori: Open Application Info`
* https://github.com/cloudfoundry/cli/wiki/V7-CLI-Installation-Guide
* npm install -g mbt
* choco install make
* npx tsc
* cf install-plugin deploy
* npm install -g yo
* https://cap.cloud.sap/docs/guides/databases-hana#setup-configuration
* cds deploy --to hana --profile hybrid
* cds add hana --for hybrid

* npm install -g ts-node
* cds build --production
* mbt build -t gen --mtar mta.tar
* cf deploy gen/mta.tar
* cf dmol -i aa5741ff-3f76-11ee-beac-eeee0a844389
* right click on mta.yaml => create mta module from template => app router
* https://blogs.sap.com/2023/05/24/how-to-deploy-a-ui5-app-inside-a-cap-mta-project-and-make-it-available-from-sap-build-work-zone-standard-edition/
* cds add approuter
* cds compile srv/ --to xsuaa > xs-security.json
* cf create-service xsuaa application MyHANAApp-auth -c xs-security.json
* cf create-service-key MyHANAApp-auth default 
* cf update-service OrderApp-xsuaa-service-2 -c xs-security.json
* cds bind -2 OrderApp-xsuaa-service-2:default 
* cds bind --exec -- npm start --prefix app
* cds watch --profile hybrid

```
// copy this from space/Service Instances/hana-hdi -> Credentials
"credentials": {
          "database_id": "be6ad4d9-761a-4349-9d08-ef883900ea95",
          "host": ....
          "port": "443",
          "driver": "com.sap.db.jdbc.Driver",
          "url": ....
        }
```

## Tutorials

* https://developers.sap.com/tutorials/cp-cf-security-xsuaa-create.html#5587e65f-8b3b-4229-b0d0-b07c0b1d3fb4
* https://developers.sap.com/tutorials/hana-cloud-cap-add-authentication.html#7a7f92ce-c320-4376-94bc-4f7b76fbf586
* https://sap.github.io/cloud-sdk/docs/java/guides/cloud-foundry-xsuaa-service#client-credentials-grant
