import Joi from "joi";


class CustomerModel {
    public customerId: string;
    public customerName: string;
    public customerCity: string;
    public workingArea: string;
    public customerCountry: string;
    public customerPhone: string;
    public agentCode: string;


    constructor(customer: CustomerModel) {
        this.customerId = customer.customerId;
        this.customerName = customer.customerName;
        this.customerCity = customer.customerCity;
        this.workingArea = customer.workingArea;
        this.customerCountry = customer.customerCountry;
        this.customerPhone = customer.customerPhone;
        this.agentCode = customer.agentCode;

    }


    public static ValidationSchema = Joi.object({
        customerId: Joi.string().required().min(2).max(100),
        customerName: Joi.string().required().min(2).max(100),
        customerCity: Joi.string().required().min(2).max(100),
        workingArea: Joi.string().required().min(2).max(100),
        customerCountry: Joi.string().required().min(2).max(100),
        customerPhone: Joi.string().required().min(2).max(100),
        agentCode: Joi.string().required().min(2).max(100),
    });


    public Validation(){
        const result = CustomerModel.ValidationSchema.validate(this);
        return result.error?.message
    }
}

export default CustomerModel;