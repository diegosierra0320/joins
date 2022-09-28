
create view v_clients_accounts as select clients.id, first_name, last_name, email, accounts.account_no, accounts.balance from clients left join accounts on clients.id = accounts.client_id;


create view v_accounts_types as select accounts.account_no, accounts.client_id, account_types.name from accounts left join account_types on accounts.type = account_types.id;


create view v_transactions_detail as select transactions.id, transactions.amount, transactions_types.name from transactions left join transactions_types on transactions.transaction_type = transactions_types.id;


create view v_transations_types_detail as select transactions.id, transactions.amount, transactions_types.name from transactions right join transactions_types on transactions.transaction_type = transactions_types.id;



