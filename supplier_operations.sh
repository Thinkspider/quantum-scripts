./run_command.sh python manage.py update_transaction_missing_report_id --company_sub_domain $1
./run_command.sh python manage.py update_supplier_state_abbrs --company_sub_domain $1
./run_command.sh python manage.py update_supplier_quantum_evaluated_certificates --company_sub_domain $1 --modified_in_days 1
./run_command.sh python manage.py update_supplier_certtypes --company_sub_domain $1 --modified_in_days 1
./run_command.sh python manage.py update_supplier_certified_classified --company_sub_domain $1 --modified_in_days 1
./run_command.sh python manage.py update_supplier_primary_certificate --company_sub_domain $1 --modified_in_days 1
./run_command.sh python manage.py update_supplier_status --company_sub_domain $1
./run_command.sh python manage.py update_index --age=24 --remove
