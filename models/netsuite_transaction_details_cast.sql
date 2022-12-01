with cast_table as 
( select * from {{ ref('netsuite','netsuite__balance_sheet')}} )
 
SELECT 
cast(accounting_period_id as int) as accounting_period_id,
accounting_period_ending,
accounting_period_full_name,
accounting_period_name,
is_accounting_period_adjustment,
is_accounting_period_closed,
account_category,
account_name,
account_type_name,
cast(account_id as int) as account_id,
account_number,
cast(converted_amount as int) as converted_amount,
balance_sheet_sort_helper
from netsuite__balance_sheet