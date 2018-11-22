set session pg.sess.var.dag_id = 'test_dag_name';
 
delete from xcom where dag_id = current_setting('pg.sess.var.dag_id');
delete from task_instance where dag_id = current_setting('pg.sess.var.dag_id');
delete from sla_miss where dag_id = current_setting('pg.sess.var.dag_id');
delete from log where dag_id = current_setting('pg.sess.var.dag_id');
delete from job where dag_id = current_setting('pg.sess.var.dag_id');
delete from dag_run where dag_id = current_setting('pg.sess.var.dag_id');
delete from task_fail where dag_id = current_setting('pg.sess.var.dag_id');
delete from dag_stats where dag_id = current_setting('pg.sess.var.dag_id');
delete from dag where dag_id = current_setting('pg.sess.var.dag_id');
