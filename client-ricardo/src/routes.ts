import { Router, Request, Response } from 'express';
import { DatasetListControler, ProcessamentoControler } from './dataverse/ricardo';
 
const routes = Router();

routes.get('/', (req: Request, res: Response) => {
    return res.json({status: 'OK'})
})

routes.get('/processar', ProcessamentoControler)
routes.get('/buscarDataset', DatasetListControler)

export default routes;