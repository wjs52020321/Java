
<?php echo $this->smarty_insert_scripts(array('files'=>'utils.js,transport.js')); ?>
<dl>
  <dd class="dd1">收货人</dd>
  <dd class="dd2">
    <input name="consignee" type="text" class="inputBg" id="consignee_<?php echo $this->_var['sn']; ?>" value="<?php echo htmlspecialchars($this->_var['consignee']['consignee']); ?>" />
    <span>*</span></dd>
</dl>
<dl>
  <dd class="dd1">联系电话</dd>
  <dd class="dd2">
    <input name="tel" type="text" class="inputBg"  id="tel_<?php echo $this->_var['sn']; ?>" value="<?php echo htmlspecialchars($this->_var['consignee']['tel']); ?>" />
    <span>*</span></dd>
</dl>


<?php if ($this->_var['real_goods_count'] > 0): ?> 

<dl>
  <dd class="dd1"><?php echo $this->_var['lang']['country_province']; ?></dd>
  <dd class="dd2"> 
    <select name="country" id="selCountries_<?php echo $this->_var['sn']; ?>" onchange="region.changed(this, 1, 'selProvinces_<?php echo $this->_var['sn']; ?>')" style="display:none;">
        <option value="0"><?php echo $this->_var['lang']['please_select']; ?><?php echo $this->_var['name_of_region']['0']; ?></option>
        <?php $_from = $this->_var['country_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'country');if (count($_from)):
    foreach ($_from AS $this->_var['country']):
?>
    <option value="<?php echo $this->_var['country']['region_id']; ?>"<?php if ($this->_var['country']['region_id'] == '1'): ?> selected<?php endif; ?>><?php echo $this->_var['country']['region_name']; ?></option>
    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    </select>
    
    <select name="province" id="selProvinces_<?php echo $this->_var['sn']; ?>" onchange="region.changed(this, 2, 'selCities_<?php echo $this->_var['sn']; ?>')" style="border:1px solid #ccc; padding:2px">
      <option value="0"><?php echo $this->_var['lang']['please_select']; ?><?php echo $this->_var['name_of_region']['1']; ?></option>
      <?php $_from = $this->_var['province_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'province');if (count($_from)):
    foreach ($_from AS $this->_var['province']):
?>
      <option value="<?php echo $this->_var['province']['region_id']; ?>" <?php if ($this->_var['consignee']['province'] == $this->_var['province']['region_id']): ?>selected<?php endif; ?>><?php echo $this->_var['province']['region_name']; ?></option>
      <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    </select>
    <select name="city" id="selCities_<?php echo $this->_var['sn']; ?>" onchange="region.changed(this, 3, 'selDistricts_<?php echo $this->_var['sn']; ?>')" style="border:1px solid #ccc; padding:2px">
      <option value="0"><?php echo $this->_var['lang']['please_select']; ?><?php echo $this->_var['name_of_region']['2']; ?></option>
      <?php $_from = $this->_var['city_list'][$this->_var['sn']]; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'city');if (count($_from)):
    foreach ($_from AS $this->_var['city']):
?>
      <option value="<?php echo $this->_var['city']['region_id']; ?>" <?php if ($this->_var['consignee']['city'] == $this->_var['city']['region_id']): ?>selected<?php endif; ?>><?php echo $this->_var['city']['region_name']; ?></option>
      <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    </select>
    <select name="district" id="selDistricts_<?php echo $this->_var['sn']; ?>" <?php if (! $this->_var['district_list'][$this->_var['sn']]): ?>style="display:none"<?php endif; ?> style="border:1px solid #ccc; padding:2px">
      <option value="0"><?php echo $this->_var['lang']['please_select']; ?><?php echo $this->_var['name_of_region']['3']; ?></option>
      <?php $_from = $this->_var['district_list'][$this->_var['sn']]; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'district');if (count($_from)):
    foreach ($_from AS $this->_var['district']):
?>
      <option value="<?php echo $this->_var['district']['region_id']; ?>" <?php if ($this->_var['consignee']['district'] == $this->_var['district']['region_id']): ?>selected<?php endif; ?>><?php echo $this->_var['district']['region_name']; ?></option>
      <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    </select>
    <span>*</span> </dd>
</dl>
<?php endif; ?> 

<?php if ($this->_var['real_goods_count'] > 0): ?> 

<dl>
  <dd class="dd1"><?php echo $this->_var['lang']['detailed_address']; ?></dd>
  <dd class="dd2">
    <input name="address" type="text" class="inputBg"  id="address_<?php echo $this->_var['sn']; ?>" value="<?php echo htmlspecialchars($this->_var['consignee']['address']); ?>" />
    <span>*</span></dd>
</dl>

<?php endif; ?> 

<!--
<dl>
<dd class="dd1"><?php echo $this->_var['lang']['backup_phone']; ?></dd><dd class="dd2"><input name="mobile" type="text" class="inputBg"  id="mobile_<?php echo $this->_var['sn']; ?>" value="<?php echo htmlspecialchars($this->_var['consignee']['mobile']); ?>" /></dd><dd class="dd3"><i></i></dd>
</dl>
--> 
<?php if ($this->_var['real_goods_count'] > 0): ?> 
 
<!--
<dl>
<dd class="dd1"><?php echo $this->_var['lang']['sign_building']; ?></dd><dd class="dd2"><input name="sign_building" type="text" class="inputBg"  id="sign_building_<?php echo $this->_var['sn']; ?>" value="<?php echo htmlspecialchars($this->_var['consignee']['sign_building']); ?>" /></dd><dd class="dd3"><i></i></dd>
</dl>
<dl>
<dd class="dd1"><?php echo $this->_var['lang']['deliver_goods_time']; ?></dd><dd class="dd2"><input name="best_time" type="text"  class="inputBg" id="best_time_<?php echo $this->_var['sn']; ?>" value="<?php echo htmlspecialchars($this->_var['consignee']['best_time']); ?>" /></dd><dd class="dd3"><i></i></dd>
</dl>--> 
<?php endif; ?>

<dl style="border:none; padding-bottom:0">
<?php if ($_SESSION['user_id'] > 0 && $this->_var['consignee']['address_id'] > 0): ?> 

  <dd class="w40">
    <button type="submit" class="c-btn3" name="Submit"><?php echo $this->_var['lang']['shipping_address']; ?></button>
  </dd>
  <dd class="w10"></dd>
  <dd class="w40"> 
    <button type="button" class="c-btn3" name="button" onclick="if (confirm('<?php echo $this->_var['lang']['drop_consignee_confirm']; ?>')) location.href='flow.php?step=drop_consignee&amp;id=<?php echo $this->_var['consignee']['address_id']; ?>'"><?php echo $this->_var['lang']['drop']; ?></button>
  </dd>
<?php else: ?>
  <dd>
    <button type="submit" class="c-btn3" name="Submit"><?php echo $this->_var['lang']['shipping_address']; ?></button>
  </dd>
<?php endif; ?>
</dl>
<input type="hidden" name="step" value="consignee" />
<input type="hidden" name="act" value="checkout" />
<input name="address_id" type="hidden" value="<?php echo $this->_var['consignee']['address_id']; ?>" />