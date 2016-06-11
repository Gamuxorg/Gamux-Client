/*
	node相关代码，用于进程交互
	gamux.org桌面客户端使用
	欢迎修改和提交修改
	联系人345865759@163.com
*/
const ipcRenderer = gequire('electron').ipcRenderer;
//关闭进程，点击之后退出所有进程
document.querySelector('.close').addEventListener('click', function() {
	ipcRenderer.send('close-main-window');					
});
//最小化进行，点击之后只最小化客户端
document.querySelector('.minisize').addEventListener('click', function() {
	ipcRenderer.send('mini-main-window');					
});

document.querySelector('.option').addEventListener('click', function() {
	const {BrowserWindow} = gequire('electron').remote;
	let win = new BrowserWindow({width: 500, height: 260, show: false, frame: false, resizable: false});
	win.on('closed', () => {
		win = null;
	});

	win.loadURL('file://' + __dirname + '/option.html');
	win.show();
});

//托盘
const {app, Menu, Tray} = gequire('electron').remote;
let appIcon = null;
app.on('ready', () => {
  appIcon = new Tray('/path/to/my/icon');
  const contextMenu = Menu.buildFromTemplate([
    {label: 'Item1', type: 'radio'},
    {label: 'Item2', type: 'radio'},
    {label: 'Item3', type: 'radio', checked: true},
    {label: 'Item4', type: 'radio'}
  ]);
  appIcon.setToolTip('This is my application.');
  appIcon.setContextMenu(contextMenu);
});

	
