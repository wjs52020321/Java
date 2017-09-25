<?php
$category = $GLOBALS['smarty']->_var['category'];
?>
<div class="categoryleve clearfix"><span>分类：</span>
		<?php $_from = get_children_tree($category); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cat');if (count($_from)):
    foreach ($_from AS $this->_var['cat']):
?>
			<?php $_from = $this->_var['cat']['children']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'child');$this->_foreach['child'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['child']['total'] > 0):
    foreach ($_from AS $this->_var['child']):
        $this->_foreach['child']['iteration']++;
?>
				<a <?php if ($this->_var['category'] == $this->_var['child']['id']): ?> class="current"<?php endif; ?> href="<?php echo $this->_var['child']['url']; ?>"><?php echo htmlspecialchars($this->_var['child']['name']); ?></a>
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
		<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
</div>
<div class="filter" style="position:static; top:0px; width:100%;">
  <form method="GET" class="sort" name="listform">
    <ul class="filter-inner">
      <li class="<?php if ($this->_var['pager']['sort'] == 'sales_volume_base'): ?>filter-cur<?php endif; ?>"> <a href="<?php echo $this->_var['script_name']; ?>.php?category=<?php echo $this->_var['category']; ?>&display=<?php echo $this->_var['pager']['display']; ?>&brand=<?php echo $this->_var['brand_id']; ?>&price_min=<?php echo $this->_var['price_min']; ?>&price_max=<?php echo $this->_var['price_max']; ?>&filter_attr=<?php echo $this->_var['filter_attr']; ?>&page=<?php echo $this->_var['pager']['page']; ?>&sort=sales_volume_base&order=<?php if ($this->_var['pager']['sort'] == 'sales_volume_base' && $this->_var['pager']['order'] == 'ASC'): ?>DESC<?php else: ?>ASC<?php endif; ?>#goods_list">销量 <span> <i class="f-ico-triangle-mt <?php if ($this->_var['pager']['sort'] == 'sales_volume_base' && $this->_var['pager']['order'] == 'ASC'): ?> f-ico-triangle-slctd<?php endif; ?>"></i> <i class="f-ico-triangle-mb <?php if ($this->_var['pager']['sort'] == 'sales_volume_base' && $this->_var['pager']['order'] == 'DESC'): ?>f-ico-triangle-slctd<?php endif; ?>"></i> </span> </a> </li>
      <li class="<?php if ($this->_var['pager']['sort'] == 'goods_id' && $this->_var['pager']['order'] == 'DESC'): ?>filter-cur<?php endif; ?>"> <a href="<?php echo $this->_var['script_name']; ?>.php?category=<?php echo $this->_var['category']; ?>&display=<?php echo $this->_var['pager']['display']; ?>&brand=<?php echo $this->_var['brand_id']; ?>&price_min=<?php echo $this->_var['price_min']; ?>&price_max=<?php echo $this->_var['price_max']; ?>&filter_attr=<?php echo $this->_var['filter_attr']; ?>&page=<?php echo $this->_var['pager']['page']; ?>&sort=goods_id&order=DESC#goods_list">综合</a> </li>
      <li class="<?php if ($this->_var['pager']['sort'] == 'click_count' && $this->_var['pager']['order'] == 'DESC'): ?>filter-cur<?php endif; ?>"> <a href="<?php echo $this->_var['script_name']; ?>.php?category=<?php echo $this->_var['category']; ?>&display=<?php echo $this->_var['pager']['display']; ?>&brand=<?php echo $this->_var['brand_id']; ?>&price_min=<?php echo $this->_var['price_min']; ?>&price_max=<?php echo $this->_var['price_max']; ?>&filter_attr=<?php echo $this->_var['filter_attr']; ?>&page=<?php echo $this->_var['pager']['page']; ?>&sort=click_count&order=DESC#goods_list">人气<i class="f-ico-arrow-d"></i></a> </li>
      <li class="<?php if ($this->_var['pager']['sort'] == 'sales_volume_base'): ?>filter-cur<?php endif; ?>"> <a href="<?php echo $this->_var['script_name']; ?>.php?category=<?php echo $this->_var['category']; ?>&display=<?php echo $this->_var['pager']['display']; ?>&brand=<?php echo $this->_var['brand_id']; ?>&price_min=<?php echo $this->_var['price_min']; ?>&price_max=<?php echo $this->_var['price_max']; ?>&filter_attr=<?php echo $this->_var['filter_attr']; ?>&page=<?php echo $this->_var['pager']['page']; ?>&sort=shop_price&order=<?php if ($this->_var['pager']['sort'] == 'shop_price' && $this->_var['pager']['order'] == 'ASC'): ?>DESC<?php else: ?>ASC<?php endif; ?>#goods_list">价格 <span> <i class="f-ico-triangle-mt <?php if ($this->_var['pager']['sort'] == 'shop_price' && $this->_var['pager']['order'] == 'ASC'): ?> f-ico-triangle-slctd<?php endif; ?>"></i> <i class="f-ico-triangle-mb <?php if ($this->_var['pager']['sort'] == 'shop_price' && $this->_var['pager']['order'] == 'DESC'): ?>f-ico-triangle-slctd<?php endif; ?>"></i> </span> </a> </li>
      <li class="filter-navBtn"><a href="javascript:;" class="j_filterBtn disabled" onclick="mtShowMenu()">筛选</a></li>
    </ul>
    <input type="hidden" name="category" value="<?php echo $this->_var['category']; ?>" />
    <input type="hidden" name="display" value="<?php echo $this->_var['pager']['display']; ?>" id="display" />
    <input type="hidden" name="brand" value="<?php echo $this->_var['brand_id']; ?>" />
    <input type="hidden" name="price_min" value="<?php echo $this->_var['price_min']; ?>" />
    <input type="hidden" name="price_max" value="<?php echo $this->_var['price_max']; ?>" />
    <input type="hidden" name="filter_attr" value="<?php echo $this->_var['filter_attr']; ?>" />
    <input type="hidden" name="page" value="<?php echo $this->_var['pager']['page']; ?>" />
    <input type="hidden" name="sort" value="<?php echo $this->_var['pager']['sort']; ?>" />
    <input type="hidden" name="order" value="<?php echo $this->_var['pager']['order']; ?>" />
  </form>
</div>

<?php if ($this->_var['category'] > 0): ?>
<form name="compareForm" action="compare.php" method="post" onSubmit="return compareGoods(this);">
  <?php endif; ?>
  <div class="srp album flex-f-row" id="J_ItemList" style="opacity:1;"> 
    <div class="product flex_in single_item">
      <div class="pro-inner"></div>
    </div>
    <a href="javascript:;" class="get_more"></a>
  </div>
  <?php if ($this->_var['category'] > 0): ?>
</form>
<?php endif; ?>