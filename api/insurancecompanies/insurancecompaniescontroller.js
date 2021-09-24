import { getInsuranceCompanies } from "./insurrancecompaniesservice.js";

const getCyrInsuranceCompanies = (req,res)=>{
    getInsuranceCompanies((errors,results)=>{
        if(errors){
            return res.status(500).json({message:'Ha ocurrido un error interno'});
        }else{
            return res.status(200).json({success:1,insuranceCompanies:results});
        }
    });
}

export {getCyrInsuranceCompanies};