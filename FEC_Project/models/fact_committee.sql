select 
    TTL_RECEIPTS as TotalReceipts,
    TRANS_FROM_AFF as TransferFromAffiliation,
    TRANF_TO_AFF as TransferToAffiliation,
    INDV_CONTRIB as IndividualContribution,
    CAND_CONTRIB as CandidateContribution,
    OTHER_POL_CMTE_CONTRIB as OtherPoliticalCommitteeContribution,
    PTY_COORD_EXP as PartyCoordinationExpense

from RAW.FEC.PAC_SUMMARY    