// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2  <0.9.0;

import {EmployerProfile} from "contracts/types/EmployerProfile.sol" ;

contract EmployeeRegistration{
    EmployerProfile[] employerProfile ;
    mapping(uint256 => address) public employerIdToAddress ;
    event EmployerRegisteredNotification(uint256  employerId , address caller) ; 
    function registerEmployee(
        string calldata name,
        bool hiringStatus
    ) external {
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
        employerIdToAddress[employerId] = msg.sender ;
        emit EmployerRegisteredNotification(employerId, msg.sender);
    }   
    function totalEmployer() external view returns(uint256){
        return employerProfile.length ;
    }

}