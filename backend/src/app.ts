import express from "express";
import router from "./6-controllers/customer-controller";
import routeNotFound from "./3-middleware/route-not-found";
import catchAll from "./3-middleware/catch-all";


const server = express();  

server.use(express.json());


server.use('/api', router)


server.use('*', routeNotFound)

server.use(catchAll)

server.listen(process.env.PORT, () =>{ console.log(`listening on port ${process.env.PORT}`)})
// server.listen(3001, () =>{ console.log(`listening on port ${3001}`)})
