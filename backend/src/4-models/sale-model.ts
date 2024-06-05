import Joi from "joi";


class Sale{
    public titleOfSale:string;
    public startDate:string;
    public endDate:string;
    public productId:number;
    public discountPercent:string;

    constructor(sale: Sale){
        this.titleOfSale = sale.titleOfSale;
        this.startDate = sale.startDate;
        this.endDate = sale.endDate;
        this.productId = sale.productId;
        this.discountPercent = sale.discountPercent;
    }


    public static validationSchema = Joi.object({
        titleOfSale: Joi.string().required().min(5).max(50),
        startDate: Joi.string().required().min(5).max(10),
        endDate: Joi.string().required().min(5).max(10),
        productId: Joi.number().required().min(1).max(50),
        discountPercent: Joi.string().required().min(1).max(50),
    });


    public validate(){
        const err = Sale.validationSchema.validate(this);
        return err.error?.message;
    }

}

export default Sale;