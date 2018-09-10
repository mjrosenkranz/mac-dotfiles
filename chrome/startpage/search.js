//Script for options to choose webpage to search
document.getElementById("find").onkeydown = function(event) {
	if(event.keyCode == 13){
		return getText();
	}
}

//redirect to chosen webpage
function go(url, search, term){
	fullurl = url + search + term;
	window.location = fullurl;
	console.log(fullurl);
	return false;
}

//get and parse the entered text, pass into go()
function getText(){	
	//find the search bar
	let el = document.getElementById("find");
	//get text from search bar
	let text = el.value;
	let args = text.split(':');
	let opt = args[0];
	const optList = Object.keys(opts);
	
	//check if option is valid
	let validOpt = false;
	for(let i = 0; i < optList.length; i++){
		if(opt == optList[i]){
			validOpt = true
			args.shift();
			break;
		}
	}
	console.log(opt);
	if(validOpt){
		return opts[opt](args);
	}else{
		return opts['g'](args);
	}
}
//options for websites
const opts = {
	//searches google.com
	'g': (args) => {
		const url = 'https://google.com', search = '/search?q=';
		if(args.length == 0){
			return go(url, '', '')
		}else{
			const term = encodeURIComponent(args);
			return go(url, search, term);
		}
	},
	
	//enters the term as a url
	'u': (args) => {
		const url = 'https://', search = '';
		const term = args;
		if(args.length == 0){
			return go('https://google.com', '', '')
		}else{
			const term = encodeURIComponent(args);
			return go(url, search, term);
		}
	},
	//goes to subreddit of given name
	'r': (args) => {
		const url = 'https://reddit.com', search = '/r/';
		const term = args;
		if(args.length == 0){
			return go(url, '', '')
		}else if(args[0] == 'saved'){
			return go('https://www.reddit.com/user/Themorgasm13000/saved/','','');
		}else{
			const term = encodeURIComponent(args);
			return go(url, search, term);
		}
	},
	//gmail
	'm': (args) => {
		const url = 'https://mail.google.com/mail/u/';
		const term = args;
		if(args.length == 0){
			return go(url, '', '')
		}else{
			const term = encodeURIComponent(args);
			return go(url, term, '/#inbox');
		}
	},
	//drive
	'd': (args) => {
		const url = 'https://drive.google.com/drive/u/';
		const term = args;
		if(args.length == 0){
			return go(url, '', '')
		}else{
			const term = encodeURIComponent(args);
			return go(url, term, '/my-drive');
		}
	},
	//school stuff
	's': (args) => {
		if(args.length == 0){
			return go('https://my.northeastern.edu/','','');
		}else{
			switch(args[0]){
				case 'web':
					return go('https://my.northeastern.edu/','','');
					break;
				case 'mail':
					return go('https://mail.google.com/mail/u/1/#inbox','','');
					break;
				case 'my':
					return go('https://my.northeastern.edu/','','');
					break;
				case '2500':
					return go('https://course.ccs.neu.edu/cs2500/index.html','','');
					break;
				case '1800':
					return go('https://course.ccs.neu.edu/cs1800/18F/index.html','','');
					break;
				default:
					return go('https://my.northeastern.edu/','','');
			}
		}
	},
	//youtube
	'y': (args) => {
		const url = 'https://youtube.com', search = '/results?search_query=';
		if(args.length == 0){
			return go('https://youtube.com','','');
		}else{
			switch(args[0]){
				case 'subs':
					return go('https://www.youtube.com/feed/subscriptions','','');
					break;
				case 'home':
					return go(url,'','');
					break;
				default:
					const term = encodeURIComponent(args);
					return go(url, search, term);
			}
		}
	},

	//LINKS
	
	//dotfiles
	
}
