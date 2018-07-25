<?php require_once('../Connections/conex.php'); ?>
<?php
$query_diagram= "SELECT *FROM diagrama  ORDER BY id desc";
$diagram= mysqli_query($conex, $query_diagram) or die(mysqli_error());
$row_diagram= mysqli_fetch_assoc($diagram);
$totalRows_diagram= mysqli_num_rows($diagram);
?>

<?php if ($totalRows_diagram == 0) { // Show if recordset empty ?>
 <br><br>
    <div class="alert alert-info alert-dismissible">
      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
      <h4><i class="icon fa fa-info"></i> Alert!</h4>
      <strong>No hay diagrams registrados.</strong> Si desea puede agregar uno nuevo.
    </div>

  <?php } // Show if recordset empty ?>
  <?php if ($totalRows_diagram > 0) { // Show if recordset not empty ?>



      <div class="row">
        
    <?php do {       ?> 



<div id="editor<?php echo $row_diagram['id']; ?>"  class="editor-ver"><?php echo $row_diagram['code']; ?>
</div>

   <div class="col-sm-6">
   <div class="card my-4">
    <div class="card-body">
      <div class="d-flex justify-content-between">
      <a href="diagrama.html?=<?php echo $row_diagram['name']; ?>" class="card-link"><h5 class="card-title text-capitalize"><?php echo $row_diagram['name']; ?></h5></a>
      <p class="card-text text-capitalize"><small class="text-muted"><?php echo $row_diagram['author']; ?></small></p>
      </div>
      <div class="contenido">
        <svg id="diagram<?php echo $row_diagram['id']; ?>" class="justify-content-end d-flex zoom<?php echo $row_diagram['id']; ?>"></svg>

      </div>
    </div>
  </div>

        </div>
      

<script>





var editor<?php echo $row_diagram['id']; ?> = ace.edit("editor<?php echo $row_diagram['id']; ?>");

    $('#diagram<?php echo $row_diagram['id']; ?>').text('');
    var diagram = flowchart.parse(editor<?php echo $row_diagram['id']; ?>.getValue());
    diagram.drawSVG('diagram<?php echo $row_diagram['id']; ?>', {
        'line-width': 2,
        'line-length': 60,
        'text-margin': 10,
        'font-size': 14,
        'font-color': 'black',
        'line-color': '#C3C3C5',
        'element-color': '#4AD670',
        'fill': '#4AD670',
        // style symbol types
        'symbols': {
          'start': {
            'font-color': 'white',
            'element-color': '#00003b',
            'fill': '#00003b'
          },
          'end':{
            'class': 'end-element',
            'font-color': '#890000',
            'element-color': '#890000',
            'fill': 'white'
          },
          'condition':{
            'font-color': 'white',
            'element-color': '#ff6500',
            'fill': '#ff6500'
          },
          'inputoutput':{
            'font-color': 'white',
            'element-color': '#1098F7',
            'fill': '#1098F7'
          },
          'subroutine':{
            'font-color': 'white',
            'element-color': '#450045',
            'fill': '#6c006c'
          }
        },
        // even flowstate support ;-)
        'flowstate' : {
            'past' : { 'fill' : '#9FA2B2','element-color': '#9FA2B2', 'font-color' : 'white'},
            'current' : {'fill' : '#ffd500', 'font-color' : 'white', 'font-weight' : 'bold','element-color': '#ffd500',},
            'successive' : { 'fill' : '#577399',  'element-color': '#577399','font-color' : 'white'},
            'request' : { 'fill' : '#EC0B43',  'element-color': '#EC0B43','font-color' : 'white'},
            'invalid' : { 'fill' : '#736B60',  'element-color': '#4B4237','font-color' : 'white'},
            'approved' : { 'fill' : '#379634', 'element-color': '#379634','font-color' : 'white','font-size' : 12, 'yes-text' : 'APPROVED', 'no-text' : 'n/a' },
            'rejected' : { 'fill' : '#4C1011', 'element-color': '#4C1011','font-color' : 'white','font-size' : 12, 'yes-text' : 'n/a', 'no-text' : 'REJECTED' }
          }
      });

var svgElement = document.querySelector('.zoom<?php echo $row_diagram['id']; ?>')
var panZoomTiger = svgPanZoom(svgElement)


</script>


 <?php } while ($row_diagram = mysqli_fetch_assoc($diagram)); ?>    

   </div>

 <?php } // Show if recordset not empty ?>

