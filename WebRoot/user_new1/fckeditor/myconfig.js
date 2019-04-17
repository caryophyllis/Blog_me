//自定义工具栏
FCKConfig.ToolbarSets["myToolbar"] = [
	['Source','-','Preview','-','Templates'],
	['Cut','Copy','Paste','PasteText','PasteWord'],
	['Undo','Redo','-','Find','Replace','-','SelectAll','RemoveFormat'],
	'/',
	['Bold','Italic','Underline','StrikeThrough','-','Subscript','Superscript'],
	['OrderedList','UnorderedList','-','Outdent','Indent','Blockquote','CreateDiv'],
	['JustifyLeft','JustifyCenter','JustifyRight','JustifyFull'],
	['Link','Unlink','Anchor'],
	['Image','Flash','Table','Rule','Smiley','SpecialChar','PageBreak'],
	'/',
	['Style','FontFormat','FontName','FontSize'],
	['TextColor','BGColor'],
	['FitWindow','ShowBlocks']		// No comma for the last row.
] ;

//自定义字体
FCKConfig.FontNames	= '宋体;黑体;方正舒体;方正姚体;仿宋;华文行楷;楷体' ;

//自定义字体大小
FCKConfig.FontSizes		= '5px;10px;15px;20px;25px;30px;35px;40px;45px' ;

//表情图片存放地址
FCKConfig.SmileyPath = FCKConfig.BasePath + 'images/smiley/qq/'; // 图片的路径
//图片的名字（数组）
FCKConfig.SmileyImages = [ '001.png', '002.png', '003.png', '004.png',
		'005.png', '006.png', '007.png', '008.png', '009.png', '010.png',
		'011.png', '012.png', '013.png', '014.png', '015.png', '016.png',
		'017.png', '018.png', '019.png', '020.png', '021.png', '022.png',
		'023.png', '024.png', '025.png', '026.png', '027.png', '028.png',
		'029.png', '030.png', '031.png', '032.png', '033.png', '034.png',
		'035.png', '036.png', '037.png', '038.png', '039.png', '040.png',
		'041.png', '042.png', '043.png', '044.png', '045.png', '046.png',
		'047.png', '048.png', '049.png', '050.png', '051.png', '052.png',
		'053.png', '054.png', '055.png', '056.png', '057.png', '058.png',
		'059.png', '060.png' ];
FCKConfig.SmileyColumns = 10;// 每行显示的个数
FCKConfig.SmileyWindowWidth = 300;// 弹出窗口宽度
FCKConfig.SmileyWindowHeight = 150;// 弹出窗口高度
				