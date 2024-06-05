import { NextFunction, Request, Response } from "express";



function catchAll(err: any, req: Request, res: Response, next: NextFunction) {
    res.status(err.status || 500).send(err.message)
}


export default catchAll;