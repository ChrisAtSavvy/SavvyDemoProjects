/*
Dataset : xsd_TRANExcessDeaths
Author  : Chris Woolery
Created : 2021-12-30
Output  : Transactional Fact table of Excess Death Data including mean base deaths vs current year deaths as a variance
          Generally no changes are required so this is just for form
History :
*/

{{ config(
materialized='view'
) }}

SELECT *
FROM `savvy-analytics-42.demonstration.xsd_SRCExcessDeaths`
