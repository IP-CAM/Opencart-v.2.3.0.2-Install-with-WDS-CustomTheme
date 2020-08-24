<?php
class ControllerCommonContentSlideShow extends Controller {
	
	public function index() {
		$this->load->model('design/layout');

		if (isset($this->request->get['route'])) {
			$route = (string)$this->request->get['route'];
		} else {
			$route = 'common/home';
		}

		$layout_id = 0;

		if ($route == 'product/category' && isset($this->request->get['path'])) {
			$this->load->model('catalog/category');

			$path = explode('_', (string)$this->request->get['path']);

			$layout_id = $this->model_catalog_category->getCategoryLayoutId(end($path));
		}

		if ($route == 'product/product' && isset($this->request->get['product_id'])) {
			$this->load->model('catalog/product');

			$layout_id = $this->model_catalog_product->getProductLayoutId($this->request->get['product_id']);
		}

		if ($route == 'information/information' && isset($this->request->get['information_id'])) {
			$this->load->model('catalog/information');

			$layout_id = $this->model_catalog_information->getInformationLayoutId($this->request->get['information_id']);
		}

		if (!$layout_id) {
			$layout_id = $this->model_design_layout->getLayout($route);
		}

		if (!$layout_id) {
			$layout_id = $this->config->get('config_layout_id');
		}

		$this->load->model('extension/module');

		$data['modules'] = array();

		$modules = $this->model_design_layout->getLayoutModules($layout_id, 'content_top');
		
		foreach ($modules as $module) {
			if ($module['code'] != 'slideshow.27') continue;
			$part = explode('.', $module['code']);
			// $this->log->write($modules);
			if (isset($part[0]) && $this->config->get($part[0] . '_status')) {
				$module_data = $this->load->controller('extension/module/' . $part[0]);
				// $this->log->write($module_data);
				if ($module_data) {
					$data['modules'][] = $module_data;
				}
			}

			if (isset($part[1])) {
				$setting_info = $this->model_extension_module->getModule($part[1]);

				if ($setting_info && $setting_info['status']) {
					$output = $this->load->controller('extension/module/' . $part[0], $setting_info);
					// $this->log->write($output);
					if ($output) {
						$data['modules'][] = $output;
					}
				}
			}
		}
		// $this->Document->addScript('catalog/view/theme/wds/js/slideshow_js.js', 'slideshow');
		// $data['scripts'] = $this->document->getScripts('slideshow');
		// $this->log->write($data['modules'][0]);
		// $matches = $this->get_matched($data['modules'][0]);
		// $this->log->write($matches);
		$html = $this->generate_html_slideshow($this->get_matched($data['modules'][0]));
		// $this->log->write($html);
		$new_data['modules'] = array();
		$new_data['modules'][] = $html;
		return $this->load->view('common/content_slideshow', $new_data);
	}
		
	public function get_matched($html) {
		$matched = array();

		$dom = new DOMDocument();
		@$dom->loadHtml($html);

		$length = $dom->getElementsByTagName('img')->length;
		// $this->log->write($length);
		for($i=0;$i<$length;$i++){
			$src = $dom->getElementsByTagName("img")->item($i)->getAttribute("src");
			array_push($matched,$src);
			// $this->log->write($src);
			// if($src != 'special_type')
				// continue;

			// $matched[] = $dom->getElementsByTagName("img")->item($i)->getAttribute("src");
			// $this->log->write($matched);
		// or   $matched[] = $dom->getElementsByTagName("div")->item($i)->nodeValue;

		}
		
		return $matched;
	}
	
	public function generate_html_slideshow($matches) {
		$html = '';
		$index = 0;
		if (!$matches) {
			return $html;
		}
		else {
			$html = '<div class="slideshow-container">
	<div class="slideshow-inner">';
			foreach ($matches as $match) {
				// $this->log->write($match);
				$index++;
				$html .= '<div class="mySlides fade"> <img  src=\'';
				$html .= $match;
				$html .= '\' style=\'width: 100%;height: 95%;\' />';
				$html .= '</div>';
			}
			$html .= '</div>';
			
			$html .= '<a class="prev" onclick=\'plusSlides(-1)\'>&#10094;</a>';
			$html .= '<a class="next" onclick=\'plusSlides(1)\'>&#10095;</a>';
			$html .= '</div>';
			$html .= '<br/>';
			
			$html .= '<div style=\'text-align: center;\'>';
			for ($ind = 1; $ind <= $index; $ind++ ) {
				$html .= '<span class="dot" onclick=\'currentSlide(';
				$html .= $ind;
				$html .= ')\'></span>';
			}
			$html .= '</div>';
		}	
		// $this->log->write($html);
		return $html;
	}
}
