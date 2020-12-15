#!/bin/bash
./run_command.sh python manage.py create_master_account --company_sub_domain $1 --email prime-admin@quantumsds.com
./run_command.sh python manage.py survey_maintainence
./run_command.sh python manage.py clearsessions
./run_command.sh python manage.py update_supplier_primary_certificate_cron
/app/workspace/scripts/supplier_operations.sh $1
/app/workspace/scripts/backupfiles.sh $1

