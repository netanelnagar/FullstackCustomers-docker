import express from "express";
import cors from "cors";
import router from "./6-controllers/customer-controller";
import routeNotFound from "./3-middleware/route-not-found";
import catchAll from "./3-middleware/catch-all";


const server = express();  

server.use(express.json());
server.use(cors());


server.use('/api', router)


server.use('*', routeNotFound)

server.use(catchAll)

const port = process.env.PORT || 3000;

server.listen(port, () =>{ console.log(`listening on port ${port}`)})
// server.listen(3001, () =>{ console.log(`listening on port ${3001}`)})
