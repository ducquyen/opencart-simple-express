<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-order" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit_express; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-order" class="form-horizontal">
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="express-number"><?php echo $entry_express_number; ?></label>
            <div class="col-sm-10">
              <input type="text" name="express_number" value="<?php echo $express_number; ?>" placeholder="<?php echo $entry_express_number; ?>" id="express-number" class="form-control" />
              <?php if ($error_express_number) { ?>
              <div class="text-danger"><?php echo $error_express_number; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="express-company"><?php echo $entry_express_company; ?></label>
            <div class="col-sm-10">
              <input type="text" name="express_company" value="<?php echo $express_company; ?>" placeholder="<?php echo $entry_express_company; ?>" id="express-company" class="form-control" />
              <?php if ($error_express_company) { ?>
              <div class="text-danger"><?php echo $error_express_company; ?></div>
              <?php } ?>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>