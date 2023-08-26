"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
module.exports = class CatalogService {
    add(req) {
        let data = req.data;
        let result = data.x + data.to;
        return result;
    }
    doSomething(req) {
        var data = req.data;
        return `Hello ${JSON.stringify(data.r)}`;
    }
};
