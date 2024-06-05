import { Router, Request, Response, NextFunction } from "express";
import customersLogic from "../5-logic/customers-logic";
import CustomerModel from "../4-models/customer-model";
import Sale from "../4-models/sale-model";



const router = Router();


router.get('/customers', async (req: Request, res: Response, next: NextFunction) => {

    try {
        const customers = await customersLogic.getAllCustomers();
        res.json(customers);
    } catch (error) {
        next(error);
    }

})

router.get('/customers/:id', async (req: Request, res: Response, next: NextFunction) => {

    try {
        const id = req.params.id;
        const customer = await customersLogic.getOneCustomer(id);
        res.json(customer);
    } catch (error) {
        next(error);
    }

})

router.post('/customers', async (req: Request, res: Response, next: NextFunction) => {

    try {
        const customer = new CustomerModel(req.body);
        await customersLogic.addNewCustomer(customer);
        res.status(201).json(customer);
    } catch (error) {
        next(error);
    }

})

router.put('/customer', async (req: Request, res: Response, next: NextFunction) => {
    try {
        const customer = new CustomerModel(req.body);
        await customersLogic.putNewCustomer(customer);
        res.status(201).json(customer);
    } catch (error) {
        next(error);
    }

})

router.patch('/customer/:id', async (req: Request, res: Response, next: NextFunction) => {

    try {
        const customer = req.body;
        customer.customerId = req.params.id;
        if (customer.id === 'undefined') { throw new Error('id is undefined'); }
        await customersLogic.patchCustomer(customer);
        res.json(`success update customer ${customer.customerId}`);
    } catch (error) {
        next(error);
    }

})

router.delete('/customer/:id', async (req: Request, res: Response, next: NextFunction) => {

    try {
        const id = req.params.id;
        if (id === 'undefined') { throw new Error('id is undefined'); }
        await customersLogic.deleteCustomer(id);
        res.sendStatus(200);
    } catch (error) {
        next(error);
    }

})



//update price product to price * 1.1 where year same
router.patch('/products/:year', async (req: Request, res: Response, next: NextFunction) => {
    try {
        const year = req.params.year;
        if (year === 'undefined') { throw new Error('id is undefined'); }
        await customersLogic.updatePriceForProducts(year);
        res.json(`success update price for product in years: ${year}`);
    } catch (error) {
        next(error);
    }
})

//post row in Sale table
router.post('/sale', async (req: Request, res: Response, next: NextFunction) => {

    try {
        const sale = new Sale(req.body)
        await customersLogic.addNewSale(sale);
        res.json(sale);
    } catch (error) {
        next(error);
    }

})
export default router;