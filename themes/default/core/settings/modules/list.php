<?php
/**
 * @created 22.04.13 - 15:32
 * @author stefanriedel
 */
?>
<div class="row-fluid">
    <?php if (!empty($locale)): ?>
        <div class="span10">
            <?php echo $pagination['module']->render(); ?>
        </div>
    <?php endif; ?>
</div>
<div class="row-fluid">
    <div class="span10">
        <?php echo twitter_anchor('javascript:void()', __ext('register_modules.anchor.label'), array('class' => 'btn btn-mini', 'id' => 'register_modules')) ?>
    </div>
</div>

<div class="row-fluid">
    <div class="span12">
        <?php if (!empty($module)): ?>
            <table id="modules" class="table table-striped table-condensed table-bordered">
                <thead>
                <tr>
                    <th><?php echo __ext('name.label') ?></th>
                    <th><?php echo __ext('description.label') ?></th>
                    <th><?php echo __ext('sort.label') ?></th>
                    <th><?php echo __ext('actions.label') ?></th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($module as $md): ?>
                    <tr id="mod-<?php echo $md->get_id() ?>">
                        <td><?php echo xss_clean($md->get_name()) ?></td>
                        <td><?php echo xss_clean($md->get_description()) ?></td>
                        <td class="sort"><span class="sort"><?php echo xss_clean($md->get_sort())?></span>
                        <?php echo html_hidden('sort', xss_clean($md->get_sort())) ?>

                        </td>
                        <td><?php
                            if ((bool)$md->get_fixed() == false) :
                                $route_name = 'core_settings_modules_';
                                $route_name .= $prefix = (bool)$md->get_active() == true ? 'deactivate' : 'activate';
                                $route = named_route($route_name, array('module' => $md->get_name()));
                                $btn_extra_class = $prefix == 'activate' ? 'btn-success' : 'btn-warning';
                                echo twitter_anchor($route, __ext($prefix . '.anchor.label'), array('class' => 'btn btn-mini ' . $btn_extra_class)); else:
                                echo html_tag('span', array(), __ext('fixed.module.label'));
                            endif;
                            ?></td>
                    </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
            <?php echo $pagination['module']->render(); ?>
        <?php endif; ?>
    </div>
</div>