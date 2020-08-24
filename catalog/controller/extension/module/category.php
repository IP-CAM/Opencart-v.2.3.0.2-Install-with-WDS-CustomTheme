<?php
class ControllerExtensionModuleCategory extends Controller {
	public function index() {
		$this->load->language('extension/module/category');

		$data['heading_title'] = $this->language->get('heading_title');
		$data['text_wds_category'] = $this->language->get('text_wds_category');

		if (isset($this->request->get['path'])) {
			$parts = explode('_', (string)$this->request->get['path']);
		} else {
			$parts = array();
		}

		if (isset($parts[0])) {
			$data['category_id'] = $parts[0];
		} else {
			$data['category_id'] = 0;
		}

		if (isset($parts[1])) {
			$data['child_id'] = $parts[1];
		} else {
			$data['child_id'] = 0;
		}

		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		$data['categories'] = array();
		$data['heading_title'] = $this->language->get('heading_title');
		$data['text_wds_category'] = $this->language->get('text_wds_category');
		
		$new_data['heading_title'] = $data['heading_title'];
		$new_data['text_wds_category'] = $data['text_wds_category'];
		$new_data['category_id'] = $data['category_id'];
		$new_data['child_id'] = $data['child_id'];
		
		$categories = $this->model_catalog_category->getCategories(0);
		// $this->log->write($categories);
		foreach ($categories as $category) {
			$children_data = array();
			// if ($category['category_id'] != $this->config->get('config_subcategory_left')) continue;
			// if ($category['category_id'] == $data['category_id']) {
				$children = $this->model_catalog_category->getCategories($category['category_id']);

				foreach($children as $child) {
					$filter_data = array('filter_category_id' => $child['category_id'], 'filter_sub_category' => true);

					$children_data[] = array(
						'category_id' => $child['category_id'],
						'name' => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
						'href' => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
					);
					// $this->log->write($child);
					if ($child['parent_id'] == $this->config->get('z_config_category_left')) {
						$new_data['categories'][] = array(
							'category_id' => $child['category_id'],
							'name' => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
							'children'    => (array) null,
							'href' => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
						);
					}
				// }
			}

			$filter_data = array(
				'filter_category_id'  => $category['category_id'],
				'filter_sub_category' => true
			);

			$data['categories'][] = array(
				'category_id' => $category['category_id'],
				'name'        => $category['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
				'children'    => $children_data,
				'href'        => $this->url->link('product/category', 'path=' . $category['category_id'])
			);
		}
		// $this->log->write($data);
		// $this->log->write($new_data);
		return $this->load->view('extension/module/category', $new_data);
	}
}