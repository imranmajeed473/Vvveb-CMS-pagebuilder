import(common.tpl)
import(ifmacros.tpl)

[data-v-exception-*]|innerText = $this->@@__data-v-exception-(*)__@@

[data-v-exception-lines] [data-v-exception-line]|deleteAllButFirstChild

[data-v-exception-lines] [data-v-exception-line]|before = <?php 
$lines = [];
if (isset($this->lines) && is_array($this->lines)) {
	$lines = $this->lines;
} else if (isset($this->code) && is_array($this->code)) {
	$lines = $this->code;
}

if (isset($lines) && is_array($lines)) {
	foreach ($lines as $index => $line) {?>
		
		[data-v-exception-lines] [data-v-exception-line] = $line
		
		[data-v-exception-lines] [data-v-exception-line]|addClass = <?php if ($index == 7) echo 'selected';?>
		
	[data-v-exception-lines] [data-v-exception-line]|after = <?php 
	} 
} ?>

body|prepend = <?php $debug = defined('DEBUG') && DEBUG;?>
[data-debug]|if_exists = $debug
