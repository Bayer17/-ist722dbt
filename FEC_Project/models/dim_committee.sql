select  

    CMTE_ID as CommitteeID,
    CMTE_NM as CommitteeName,
    CMTE_PTY_AFFILIATION as PartyAffiliation,
    CAND_ID as CandidateID, 
    CMTE_DSGN as CommitteeDesign,
    CMTE_FILING_FREQ as CommitteeFilingRequirement,
    CMTE_ST1 as CommitteeAddress1,
    CMTE_ST2 as CommitteeAddress2,
    CMTE_CITY as CommitteeCity,
    CMTE_ST as CommitteeState,
    CMTE_ZIP as CommitteeZip,
    CONNECTED_ORG_NM as ConnectedOrganization,
    ORG_TP as OrganizationType,
    TRES_NM
    
from RAW.FEC.COMMITTEE_MASTER