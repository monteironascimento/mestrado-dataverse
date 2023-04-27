import { Request, Response } from 'express';
import { DataverseClient } from 'js-dataverse';

const client = new DataverseClient('http://localhost:8580/', '71127c64-9796-4741-99ce-2d2e4de94d9e')

export const ProcessamentoControler = async (req: Request, res: Response) => {
    
    return res.json({status: 'OK'});
}

export const DatasetListControler = async (req: Request, res: Response) => {

    return res.json({status: 'OK'});
}
