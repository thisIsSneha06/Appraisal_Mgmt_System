<?php include'db_connect.php' ?>
<div class="col-lg-12">
	<div class="card card-outline card-success">
		<div class="card-header">
			<?php if($_SESSION['login_type'] == 1): ?>
			<div class="card-tools">
				<a class="btn btn-block btn-sm btn-default btn-flat border-primary" href="./index.php?page=new_appraisal"><i class="fa fa-plus"></i> Add New Appraisal</a>
			</div>
			<?php endif; ?>
		</div>
		<div class="card-body">
			<table class="table tabe-hover table-bordered" id="list">
				<thead>
					<tr>
						<th class="text-center">#</th>	
						<th width="10%">Emp Name</th>
						<th width="8%">Work Efficiency</th>
                        <th>HC ROI</th>
                        <th>Net PS</th>
                        <th width="8%">Perform. Growth</th>
                        <th>Profit/ FTE</th>
                        <th width="15%">Net KPI Score (25)</th>
						<th>Appraisal Hike (%)</th>	
                        <?php if($_SESSION['login_type'] == 1): ?>
                        <th>Action</th>		
                        <?php endif; ?>				
					</tr>
				</thead>
				<tbody>
					<?php
					$i = 1;
					$where = "";
					if($_SESSION['login_type'] == 1)
						$where = " where r.evaluator_id = {$_SESSION['login_id']} ";
					elseif($_SESSION['login_type'] == 0)
						$where = " where r.employee_id = '{$_SESSION['login_id']}' ";

					// Calculating 'Appraisal Hike' = 'Total KPI Score' / 'Total Credit (25) * 10

					$qry = $conn->query("SELECT r.*,concat(e.lastname,', ',e.firstname,' ',e.middlename) as	name, 
                    concat(ev.lastname,', ',ev.firstname,' ',ev.middlename) as ename, 
                    r.work_efficiency, r.hcroi, r.nps, r.performance_growth, r.profit_per_fte, 
                    ((((r.work_efficiency + r.hcroi + r.nps + r.performance_growth + r.profit_per_fte )))) as 
                    total_kpi_score FROM kpi r inner join employee_list e on e.id = r.employee_id inner join evaluator_list ev on 
                    ev.id = r.evaluator_id $where order by concat(e.lastname,', ',e.firstname,' ',e.middlename) asc");
					while($row= $qry->fetch_assoc()):		
					?>
					<tr>
						<th class="text-center"><?php echo $i++ ?></th>
						<td><b><?php echo ucwords($row['name']) ?></b></td>
                        <td><b><?php echo number_format($row['work_efficiency']) ?></b></td>
                        <td><b><?php echo number_format($row['hcroi']) ?></b></td>
                        <td><b><?php echo number_format($row['nps']) ?></b></td>
                        <td><b><?php echo number_format($row['performance_growth']) ?></b></td>
                        <td><b><?php echo number_format($row['profit_per_fte']) ?></b></td>
                        <td><b><?php echo number_format($row['total_kpi_score']) ?> / 25</b></td>
						<td><b><?php echo number_format(($row['total_kpi_score']/25)*10,1)."%" ?></b></td>		
                        <?php if($_SESSION['login_type'] == 1): ?>
                        <td class="text-center">
							<button type="button" class="btn btn-default btn-sm btn-flat border-info wave-effect text-info dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
		                      Action
		                    </button>
		                    <div class="dropdown-menu" style="">
		                      <!-- <a class="dropdown-item view_appraisal" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>">View</a> -->
		                      <!-- <div class="dropdown-divider"></div> -->
							  
		                      <a class="dropdown-item" href="./index.php?page=edit_appraisal&id=<?php echo $row['id'] ?>">Edit</a>
		                      <div class="dropdown-divider"></div>
		                      <a class="dropdown-item delete_appraisal" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>">Delete</a>							  
		                    </div>
						</td>	
                        <?php endif; ?>									
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
	$(document).on("click",".view_appraisal", function(){
		uni_modal("Appraisal KPI Measure","view_appraisal.php?id="+$(this).attr('data-id'),'mid-large')
	})
	$(document).on("click",".delete_appraisal", function(){
	_conf("Are you sure to delete this appraisal?","delete_appraisal",[$(this).attr('data-id')])
	})
	})
	function delete_appraisal($id){
		start_load()
		$.ajax({
			url:'ajax.php?action=delete_appraisal',
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