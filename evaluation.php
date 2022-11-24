<?php include'db_connect.php' ?>
<div class="col-lg-12">
	<div class="card card-outline card-success">
		<div class="card-header">
			<?php if($_SESSION['login_type'] == 1): ?>
			<div class="card-tools">
				<a class="btn btn-block btn-sm btn-default btn-flat border-primary" href="./index.php?page=new_evaluation"><i class="fa fa-plus"></i> Add New Evaluation</a>
			</div>
			<?php endif; ?>
		</div>
		<div class="card-body">
			<table class="table tabe-hover table-bordered" id="list">
				<thead>
					<tr>
						<th class="text-center">#</th>
						<th>Emp Name</th>
						<th width="20%">Task Name</th>
						<th width="17%">Task Status</th>
						<?php if($_SESSION['login_type'] != 1): ?>
						<th>Evaluator</th>
						<?php endif; ?>
						<th width="20%">Performance Avg.</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<?php
					$i = 1;
					$where = "";
					if($_SESSION['login_type'] == 1)
						$where = " where r.evaluator_id = {$_SESSION['login_id']} ";
					elseif($_SESSION['login_type'] == 0)
						$where = " where t.employee_id = '{$_SESSION['login_id']}' ";
					
					// Calculated performance average out of 55.
					// 11 parameters out of max. credit 5 per metric = Total evaluation credit = 55.

					$qry = $conn->query("SELECT r.*,concat(e.lastname,', ',e.firstname,' ',e.middlename) as 
						name, t.task, t.status, t.due_date, concat(ev.lastname,', ',ev.firstname,' ',ev.middlename) as 
							ename,((((r.efficiency + r.timeliness + r.quality + r.attention + r.creativity + 
								r.accuracy + r.communication + r.punctuality + r.consistency + r.teamwork + 
									r.presentation)/55)) * 100) as pa FROM ratings r inner join employee_list e 
										on e.id = r.employee_id inner join task_list t on t.id = r.task_id inner join 
											evaluator_list ev on ev.id = r.evaluator_id $where order by 
												concat(e.lastname,', ',e.firstname,' ',e.middlename) asc");
					while($row= $qry->fetch_assoc()):		
					?>
					<tr>
						<th class="text-center"><?php echo $i++ ?></th>
						<td><b><?php echo ucwords($row['name']) ?></b></td>
						<td><b><?php echo ($row['task']) ?></b></td>
						<td>
                        	<?php 
                        	if($row['status'] == 0){
						  		echo "<span class='badge badge-info'>Pending</span>";
                        	}elseif($row['status'] == 1){
						  		echo "<span class='badge badge-primary'>On-Progress</span>";
                        	}elseif($row['status'] == 2){
						  		echo "<span class='badge badge-success'>Complete</span>";
                        	}
                        	if(strtotime($row['due_date']) < strtotime(date('Y-m-d'))){
						  		echo "<span class='badge badge-danger mx-1'>Over Due</span>";
                        	}
                        	?>
                        </td>
						<?php if($_SESSION['login_type'] != 1): ?>
						<td><b><?php echo ucwords($row['ename']) ?></b></td>
						<?php endif; ?>
						<td><b><?php echo number_format($row['pa'],2)."%" ?></b></td>
						<td class="text-center">
							<button type="button" class="btn btn-default btn-sm btn-flat border-info wave-effect text-info dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
		                      Action
		                    </button>
		                    <div class="dropdown-menu" style="">
		                      <a class="dropdown-item view_evaluation" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>">View</a>
		                      <?php if($_SESSION['login_type'] == 1): ?>
							  <div class="dropdown-divider"></div>
		                      <a class="dropdown-item" href="./index.php?page=edit_evaluation&id=<?php echo $row['id'] ?>">Edit</a>
		                      <div class="dropdown-divider"></div>
		                      <a class="dropdown-item delete_evaluation" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>">Delete</a>
							  <?php endif; ?>
		                    </div>
						</td>
					</tr>	
				<?php endwhile; ?>
				</tbody>
			</table>
		</div>
	</div>
</div>
<script>
	$(document).ready(function(){
		$('#list').dataTable()
	$(document).on("click",".view_evaluation", function(){
		uni_modal("Performance Evaluation","view_evaluation.php?id="+$(this).attr('data-id'),'mid-large')
	})
	$(document).on("click",".delete_evaluation", function(){
	_conf("Are you sure to delete this evaluation?","delete_evaluation",[$(this).attr('data-id')])
	})
	})
	function delete_evaluation($id){
		start_load()
		$.ajax({
			url:'ajax.php?action=delete_evaluation',
			method:'POST',
			data:{id:$id},
			success:function(resp){
				if(resp==1){
					alert_toast("Data successfully deleted",'success')
					setTimeout(function(){
						location.reload()
					},1500)

				}
			}
		})
	}
</script>