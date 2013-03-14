<?php
/**
 * @created 27.02.13 - 08:41
 * @author stefanriedel
 */
?>

<div class="span12">
    <div class="control-group">
        <?php echo html_anchor(core_settings_locales_add_route($language_id), extend_locale('add.button.label'), array('class' => 'btn btn-success')) ?>
    </div>
    <?php echo $pagination['srit:locale']->render(); ?>
    <?php if (!empty($crud_objects['srit:locale']['data'])): ?>
    <table class="table table-striped table-condensed">
        <tr>
            <th><?php echo __(extend_locale('key.label')) ?></th>
            <th><?php echo __(extend_locale('group.label')) ?></th>
            <th><?php echo __(extend_locale('value.label')) ?></th>
            <th><?php echo __(extend_locale('actions.label')) ?></th>
        </tr>
        <tr>
            <td>
                <form method="post" accept-charset="utf-8" action="<?php echo core_settings_locales_add_route($language_id) ?>">
                    <?php echo security_field(); ?>
                    <?php echo html_hidden('language_id', $language_id) ?>
                <?php echo twitter_html_input_text_wo_label('key', '') ?></td>
            <td><?php echo twitter_html_input_text_wo_label('group', '', null, array(), array('autocomplete' => 'off', 'data-provide' => 'typeahead', 'data-link' => \Uri::create('/core/settings/locales/rest/search'))) ?></td>
            <td><?php echo twitter_html_input_text_wo_label('value', '') ?></td>
            <td><?php echo twitter_html_submit_button('save', 'save', extend_locale('save.button.label'), array(), array('class' => 'btn-info')) ?>
                </form></td>
        </tr>
        <?php foreach ($crud_objects['srit:locale']['data'] as $locale): ?>
        <tr>
            <td><?php echo xss_clean($locale->key) ?></td>
            <td><?php echo xss_clean($locale->group) ?></td>
            <td><?php echo $locale->cutted_value()?></td>
            <td>
                <?php echo twitter_button_group(array(
                array('attr' => array(), 'value' => html_anchor(core_settings_locales_edit_route($locale->id, $language_id), __(extend_locale('actions.edit.label')))),
                array('attr' => array(), 'value' => html_anchor(core_settings_locales_delete_route($locale->id, $language_id), __(extend_locale('actions.delete.label')))),
            ), extend_locale('actions.label'), array()); ?>
            </td>
        </tr>
        <?php endforeach; ?>
    </table>
    <?php echo $pagination['srit:locale']->render(); ?>
    <?php endif; ?>
</div>