<?php 
include 'db_connect.php';
if(isset($_GET['id'])){
	$qry = $conn->query("SELECT r.*,concat(e.lastname,', ',e.firstname,' ',e.middlename) as 
		name,t.task,concat(ev.lastname,', ',ev.firstname,' ',ev.middlename) as 
			ename,((((r.efficiency + r.timeliness + r.quality + r.attention + r.creativity + 
								r.accuracy + r.communication + r.punctuality + r.consistency + r.teamwork + 
									r.presentation)/55)) * 100) as pa FROM ratings r inner join 
										employee_list e on e.id = r.employee_id inner join task_list t on 
											t.id = r.task_id inner join evaluator_list ev on ev.id = r.evaluator_id  
												where r.id = ".$_GET['id'])->fetch_array();
	foreach($qry as $k => $v){
		$$k = $v;
	}	
}
?>
<div class="container-fluid">
	<div class="col-lg-12">
		<div class="row">
			<div class="col-md-6">
				<dl>
					<dt><b class="border-bottom border-primary">Task</b></dt>
					<dd><?php echo ucwords($task) ?></dd>
				</dl>
				<!-- <dl>
					<dt><b class="border-bottom border-primary">Assigned To</b></dt>
					<dd><?php echo ucwords($name) ?></dd>
				</dl> -->
				<dl>
					<dt><b class="border-bottom border-primary">Evaluator</b></dt>
					<dd><?php echo ucwords($ename) ?></dd>
				</dl>
			</div>
			<div class="col-md-6">	
				<dl>
					<dt><b class="border-bottom border-primary">Evaluation Date</b></dt>
					<dd><?php echo date("d-m-Y",strtotime($date_created)) ?></dd>
				</dl>
				<dl>
					<dt><b class="border-bottom border-primary">Remarks</b></dt>
					<dd><?php echo $remarks ?></dd>
				</dl>
			</div>
			<hr width="94%" style="border-top: 0.9px solid #28a745; margin-left: 8px; 
			margin-right: 8px; margin-top: 10px; margin-bottom: 25px;">
			<div class="col-md-6" style="border-right: 1.1px solid #28a745; margin-bottom: 15px;">
				<b class="border-bottom border-primary">TASK BASED: </b><br>
				<dl>
					<dt><b class="border-bottom border-primary">Efficiency</b></dt>
					<dd><?php echo $efficiency ?></dd>
				</dl>
				<dl>
					<dt><b class="border-bottom border-primary">Timeliness</b></dt>
					<dd><?php echo $timeliness ?></dd>
				</dl>				
				<dl>
					<dt><b class="border-bottom border-primary">Attention to details</b></dt>
					<dd><?php echo $attention ?></dd>
				</dl>
				<dl>
					<dt><b class="border-bottom border-primary">Creativity</b></dt>
					<dd><?php echo $creativity ?></dd>
				</dl>
				<dl>
					<dt><b class="border-bottom border-primary">Accuracy</b></dt>
					<dd><?php echo $accuracy ?></dd>
				</dl>								
				<dl>
					<dt><b class="border-bottom border-primary">Overall Quality</b></dt>
					<dd><?php echo $quality ?></dd>
				</dl>
			</div>
			<div class="col-md-6">
			<b class="border-bottom border-primary">BEHAVIOUR BASED: </b><br>
				<dl>
					<dt><b class="border-bottom border-primary">Communication</b></dt>
					<dd><?php echo $communication ?></dd>
				</dl>
				<dl>
					<dt><b class="border-bottom border-primary">Punctuality</b></dt>
					<dd><?php echo $punctuality ?></dd>
				</dl>
				<dl>
					<dt><b class="border-bottom border-primary">Consistency</b></dt>
					<dd><?php echo $consistency ?></dd>
				</dl>
				<dl>
					<dt><b class="border-bottom border-primary">Team Work</b></dt>
					<dd><?php echo $teamwork ?></dd>
				</dl>
				<dl>
					<dt><b class="border-bottom border-primary">Presentation</b></dt>
					<dd><?php echo $presentation ?></dd>
				</dl>
				<dl>
					<dt><b class="border-bottom border-primary">PERFORMANCE AVERAGE</b></dt>
					<dd><?php echo number_format($pa,2).'%' ?></dd>
				</dl>
				<!-- <dl>
					<dt><b class="border-bottom border-primary">APPRAISAL HIKE</b></dt>
					<dd><?php echo number_format(($pa*11)/100,1).'%' ?></dd>
				</dl> -->
			</div>
		</div>
	</div>
</div>
<style>
	#uni_modal .modal-footer{
		display: none
	}
	#uni_modal .modal-footer.display{
		display: flex
	}
	#post-field{
		max-height: 70vh;
		overflow: auto;
	}
</style>
<div class="modal-footer display p-0 m-0">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
</div>