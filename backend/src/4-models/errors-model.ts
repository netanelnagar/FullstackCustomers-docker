class ErrorModel{
    constructor(public message:string, public status:number){} 
}


export class ResourceNotFoundError extends ErrorModel{
    constructor(public id:number |string){
        super(`ID ${id} not found`, 404)
    }
}


export class ValidationError extends ErrorModel{
    constructor(public message:string){
        super(message, 400)
    }
}


export class AuthError extends ErrorModel{
    constructor(public message:string){
        super(message, 401)
    }
}
