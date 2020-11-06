function Import-ADFSTkIssuanceTransformRuleCategoriesFromFederation {
param (
[Parameter(Mandatory=$false,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
    $RequestedAttributes
)

    ################################
    ### SWAMID Entity Categories ###
    ################################

    $IssuanceTransformRuleCategories = @{}

    ### SWAMID Entity Category Research and Education

    $TransformRules = [Ordered]@{}

    $TransformRules.eduPersonPrincipalName = $Global:ADFSTkAllTransformRules.eduPersonPrincipalName
    $TransformRules.eduPersonUniqueID = $Global:ADFSTkAllTransformRules.eduPersonUniqueID
    $TransformRules.mail = $Global:ADFSTkAllTransformRules.mail
    $TransformRules.displayName = $Global:ADFSTkAllTransformRules.displayName
    $TransformRules.cn = $Global:ADFSTkAllTransformRules.cn
    $TransformRules.givenName = $Global:ADFSTkAllTransformRules.givenName
    $TransformRules.sn = $Global:ADFSTkAllTransformRules.sn
    $TransformRules.eduPersonAssurance = $Global:ADFSTkAllTransformRules.eduPersonAssurance
    $TransformRules.eduPersonScopedAffiliation = $Global:ADFSTkAllTransformRules.eduPersonScopedAffiliation
    $TransformRules.o = $Global:ADFSTkAllTransformRules.o
    $TransformRules.norEduOrgAcronym = $Global:ADFSTkAllTransformRules.norEduOrgAcronym
    $TransformRules.c = $Global:ADFSTkAllTransformRules.c
    $TransformRules.co = $Global:ADFSTkAllTransformRules.co
    $TransformRules.schacHomeOrganization = $Global:ADFSTkAllTransformRules.schacHomeOrganization

    $IssuanceTransformRuleCategories.Add("http://www.swamid.se/category/research-and-education",$TransformRules)

    ### SWAMID Entity Category SFS 1993:1153

    $TransformRules = [Ordered]@{}

    $TransformRules.norEduPersonNIN = $Global:ADFSTkAllTransformRules.norEduPersonNIN
    $TransformRules.eduPersonAssurance = $Global:ADFSTkAllTransformRules.eduPersonAssurance

    $IssuanceTransformRuleCategories.Add("http://www.swamid.se/category/sfs-1993-1153",$TransformRules)

    ### GEANT Dataprotection Code of Conduct
    
    $TransformRules = [Ordered]@{}

    if ($RequestedAttributes.Count -gt 0)
    {
        if ($RequestedAttributes.ContainsKey("urn:oid:2.5.4.6")) {
            $TransformRules.c = $Global:ADFSTkAllTransformRules.c
        }
        if ($RequestedAttributes.ContainsKey("urn:oid:2.5.4.3")) {
            $TransformRules.cn = $Global:ADFSTkAllTransformRules.cn
        }
        if ($RequestedAttributes.ContainsKey("urn:oid:0.9.2342.19200300.100.1.43")) {
            $TransformRules.co = $Global:ADFSTkAllTransformRules.co
        }
        if ($RequestedAttributes.ContainsKey("urn:oid:2.16.840.1.113730.3.1.241")) { 
            $TransformRules.displayName = $Global:ADFSTkAllTransformRules.displayName 
        }
        if ($RequestedAttributes.ContainsKey("urn:oid:2.5.4.6")) { 
            $TransformRules.countryName = $Global:ADFSTkAllTransformRules.countryName 
        }
        if ($RequestedAttributes.ContainsKey("urn:oid:1.3.6.1.4.1.5923.1.1.1.1")) {
            $TransformRules.eduPersonAffiliation = $Global:ADFSTkAllTransformRules.eduPersonAffiliation
        }
        if ($RequestedAttributes.ContainsKey("urn:oid:1.3.6.1.4.1.5923.1.1.1.11")) {
            $TransformRules.eduPersonAssurance = $Global:ADFSTkAllTransformRules.eduPersonAssurance
        }
        if ($RequestedAttributes.ContainsKey("urn:oid:1.3.6.1.4.1.5923.1.1.1.16")) {
            $TransformRules.eduPersonOrcid = $Global:ADFSTkAllTransformRules.eduPersonOrcid
        }
        if ($RequestedAttributes.ContainsKey("urn:oid:1.3.6.1.4.1.5923.1.1.1.6")) { 
            $TransformRules.eduPersonPrincipalName = $Global:ADFSTkAllTransformRules.eduPersonPrincipalName
        }
        if ($RequestedAttributes.ContainsKey("urn:oid:1.3.6.1.4.1.5923.1.1.1.9")) {
            $TransformRules.eduPersonScopedAffiliation = $Global:ADFSTkAllTransformRules.eduPersonScopedAffiliation
        }
        if ($RequestedAttributes.ContainsKey("urn:oid:1.3.6.1.4.1.5923.1.1.1.10")) { 
            $TransformRules.eduPersonTargetedID = $Global:ADFSTkAllTransformRules.eduPersonTargetedID
        }
        if ($RequestedAttributes.ContainsKey("urn:oid:1.3.6.1.4.1.5923.1.1.1.13")) { 
            $TransformRules.eduPersonUniqueID = $Global:ADFSTkAllTransformRules.eduPersonUniqueID
        }
        if ($RequestedAttributes.ContainsKey("urn:oid:0.9.2342.19200300.100.1.43")) { 
            $TransformRules.friendlyCountryName = $Global:ADFSTkAllTransformRules.friendlyCountryName 
        }
        if ($RequestedAttributes.ContainsKey("urn:oid:2.5.4.42")) { 
            $TransformRules.givenName = $Global:ADFSTkAllTransformRules.givenName 
        }
        if ($RequestedAttributes.ContainsKey("urn:oid:0.9.2342.19200300.100.1.3")) { 
            $TransformRules.mail = $Global:ADFSTkAllTransformRules.mail
        }
        if ($RequestedAttributes.ContainsKey("urn:oid:1.3.6.1.4.1.2428.90.1.6")) { 
            $TransformRules.norEduOrgAcronym = $Global:ADFSTkAllTransformRules.norEduOrgAcronym 
        }
        if ($RequestedAttributes.ContainsKey("urn:oid:1.3.6.1.4.1.2428.90.1.5")) {
            $TransformRules.norEduPersonNIN = $Global:ADFSTkAllTransformRules.norEduPersonNIN
        }
        if ($RequestedAttributes.ContainsKey("urn:oid:2.5.4.10")) {
            $TransformRules.o = $Global:ADFSTkAllTransformRules.o
        }
        if ($RequestedAttributes.ContainsKey("urn:oid:2.5.4.10")) { 
            $TransformRules.organizationName = $Global:ADFSTkAllTransformRules.organizationName 
        }
        if ($RequestedAttributes.ContainsKey("urn:oid:1.2.752.29.4.13")) {
            $TransformRules.personalIdentityNumber = $Global:ADFSTkAllTransformRules.personalIdentityNumber
        }
        if ($RequestedAttributes.ContainsKey("urn:oid:1.3.6.1.4.1.25178.1.2.3")) {
            $TransformRules.schacDateOfBirth = $Global:ADFSTkAllTransformRules.schacDateOfBirth
        }
        if ($RequestedAttributes.ContainsKey("urn:oid:1.3.6.1.4.1.25178.1.2.9")) { 
            $TransformRules.schacHomeOrganization = $Global:ADFSTkAllTransformRules.schacHomeOrganization
        }
        if ($RequestedAttributes.ContainsKey("urn:oid:1.3.6.1.4.1.25178.1.2.10")) {
            $TransformRules.schacHomeOrganizationType = $Global:ADFSTkAllTransformRules.schacHomeOrganizationType
        }
        if ($RequestedAttributes.ContainsKey("urn:oid:2.5.4.4")) { 
            $TransformRules.sn = $Global:ADFSTkAllTransformRules.sn
        }
    }

    $IssuanceTransformRuleCategories.Add("http://www.geant.net/uri/dataprotection-code-of-conduct/v1",$TransformRules)


    $IssuanceTransformRuleCategories
}