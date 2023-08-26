import type { Request } from "@sap/cds/apis/services"

module.exports = class CatalogService {
    add(req: Request) {
        let data:{ x:number, to:number } = req.data
        let result = data.x + data.to
        return result
    }

    doSomething(req: Request) {
        var data:{ r:Array<{ text: string }> } = req.data
        return `Hello ${JSON.stringify(data.r)}`
    }
}