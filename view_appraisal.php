<?php 
include 'db_connect.php';
if(isset($_GET['id'])){
    $qry = $conn->query("SELECT r.*,concat(e.lastname,', ',e.firstname,' ',e.middlename) as	name, 
        concat(ev.lastname,', ',ev.firstname,' ',ev.middlename) as ename, 
        r.work_efficiency, r.hcroi, r.nps, r.performance_growth, r.profit_per_fte, 
        ((((r.work_efficiency + r.hcroi + r.nps + r.performance_growth + r.profit_per_fte )))) as 
        total_kpi_score FROM kpi r inner join employee_list e on e.id = r.employee_id inner join evaluator_list ev on 
        ev.id = r.evaluator_id where r.id = ".$_GET['id'])->fetch_array();

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
					<dt><b class="border-bottom border-primary">Emp Name</b></dt>
					<dd><?php echo ucwords($name) ?></dd>
				</dl>
				<dl>
					<dt><b class="border-bottom border-primary">Evaluator</b></dt>
					<dd><?php echo ucwords($ename) ?></dd>
				</dl>
			</div>
			<hr width="94%" style="border-top: 0.9px solid #28a745; margin-left: 8px; 
			margin-right: 8px; margin-top: 10px; margin-bottom: 25px;">
			<div class="col-md-6">
				<b class="border-bottom border-primary">KPI Metrics: </b><br>
				<dl>
					<dt><b class="border-bottom border-primary">Work Efficiency</b></dt>
					<dd><?php echo $work_efficiency ?></dd>
				</dl>
				<dl>
					<dt><b class="border-bottom border-primary">Human Capital ROI</b></dt>
					<dd><?php echo $hcroi ?></dd>
				</dl>				
				<dl>
					<dt><b class="border-bottom border-primary">Net Promoter Score</b></dt>
					<dd><?php echo $nps ?></dd>
				</dl>
				<dl>
					<dt><b class="border-bottom border-primary">Performance Growth</b></dt>
					<dd><?php echo $performance_growth ?></dd>
				</dl>
				<dl>
					<dt><b class="border-bottom border-primary">Profit per FTE (Full-Time Equivalent)</b></dt>
					<dd><?php echo $profit_per_fte ?></dd>
				</dl>	
                <dl>
					<dt><b class="border-bottom border-primary">Net KPI Score</b></dt>
					<dd><?php echo number_format($total_kpi_score)?></dd>
				</dl>							
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