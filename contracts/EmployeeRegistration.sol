// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2  <0.9.0;

import {EmployerProfile} from "contracts/types/EmployerProfile.sol" ;

contract EmployeeRegistration{
    EmployerProfile[] employerProfile ;

    function registerEmployee(
        string calldata name,
        bool hiringStatus
    ) public {
        uint256 employerId = employerProfile.length ;
        EmployerProfile memory employer = EmployerProfile(
            {
                id : employerId ,
                name : name ,
                isHiring : hiringStatus ,
                wallet : msg.sender
            }
        );
        employerProfile.push(employer) ;
    }
    function totalEmployer() public view returns(uint256){
        return employerProfile.length ;
    }

}