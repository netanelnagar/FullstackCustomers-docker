import { NextFunction, Request, Response } from "express";



function routeNotFound(req: Request, res: Response, next: NextFunction) {
    res.status(404).send(`Page ${req.originalUrl} not found`)
}


export default routeNotFound;