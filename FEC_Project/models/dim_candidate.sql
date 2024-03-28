with stg_candidates as (
    select * from RAW.FEC.CANDIDATE_MASTER
)
select

    stg_candidates.CAND_ID AS candidateid,
    stg_candidates.CAND_NAME as candidatename,
    stg_candidates.CAND_PTY_AFFILIATION as partyaffiliation,
    stg_candidates.CAND_ELECTION_YR::int as electionyear,
    stg_candidates.CAND_OFFICE_ST AS candidatestate,
    stg_candidates.CAND_OFFICE AS candidateoffice,
    stg_candidates.CAND_OFFICE_DISTRICT AS candidateofficedistrict,
    stg_candidates.CAND_ICI AS incumbentchallengerstatus,
    stg_candidates.CAND_STATUS AS candidatestatus,
    stg_candidates.CAND_PCC AS principalcampaigncommittee,
    stg_candidates.CAND_ST1 AS mailingaddress_street1,
    stg_candidates.CAND_ST2 AS mailingaddress_street2,
    stg_candidates.CAND_CITY AS mailingaddress_city,
    stg_candidates.CAND_ST mailingaddress_state,
    stg_candidates.CAND_ZIP AS mailingaddress_zip
from stg_candidates