import(common.tpl)
import(ifmacros.tpl)

[data-v-exception-*]|innerText = $this->@@__data-v-exception-(*)__@@

[data-v-exception-lines] [data-v-exception-line]|deleteAllButFirstChild

[data-v-exception-lines] [data-v-exception-line]|before = <?php 
foreach ($this->lines as $index => $line) {?>
	
	[data-v-exception-lines] [data-v-exception-line] = $line
	
	[data-v-exception-lines] [data-v-exception-line]|addClass = <?php if ($index == 7) echo 'selected';?>
	
[data-v-exception-lines] [data-v-exception-line]|after = <?php 
} ?>	

body|prepend = <?php $debug = defined('DEBUG') && DEBUG;?>
[data-debug]|if_exists = $debug
