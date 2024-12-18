It is based on the **US Public Health Patient** profile with further constraints to require masking of:
 * identifier
 * name
 * birthDate
 * telecom
 * line in address
 * contact.name
 * contact.telecom
 * contact.address
 
If Patient.postalCode (zip) is present it SHALL contain the original first 3 digits and contain zeros for the last 2 digits