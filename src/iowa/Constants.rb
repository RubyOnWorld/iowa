require 'iowa/Association'
require 'singleton'

module Iowa

	class UnknownValue
		include Singleton
		def to_s
			'UNK'
		end
	end
	alias :to_str :to_s

	BindingKeywords = {'action' => [LiteralAssociation,true],
		'id' => [LiteralAssociation, false],
		'item' => [PathAssociation,true],
		'list' => [FlexibleAssociation,true],
		'key' => [PathAssociation,true],
		'klass' => [LiteralAssociation,true], # not 'class' because of HTML conflict
		'tag' => [LiteralAssociation,true],
		'condition' => [PathAssociation,true],
		'value' => [PathAssociation,true]}

	ClassSeparator = '::'.freeze
	ContentClassesNamespace = 'Iowa::Application::ContentClasses'.freeze

	C_ = ' '.freeze
	C_1_0 = '1.0'.freeze
	C__ = '_'.freeze
	C_amp = '&'.freeze
	C_anon_ = '_anon_'.freeze
	C_at = '@'.freeze
	C_atat = '@@'.freeze
	C_bnd = '.bnd'.freeze
	C_comma = ','.freeze
	C_content = '_content'.freeze
	C_dash = '-'.freeze
	C_dat = '.dat'.freeze
	C_default = '_default'.freeze
	C_dot = '.'.freeze
	C_dotdot = '..'.freeze
	C_empty = ''.freeze
	C_equal = '='.freeze
	C_gt = '>'.freeze
	C_item = '_item'.freeze
	C_iwa = '.iwa'.freeze
	C__keystack = '__keystack'.freeze
	C_list = '_list'.freeze
	C_method = '_method'.freeze
	C_semicolon = ';'.freeze
	C_slash = '/'.freeze
	C_slashindex_html = '/index.html'.freeze
	C0 = '0'.freeze
	C_0to7 = 0..7.freeze
	C1 = '1'.freeze
	Caction = 'action'.freeze
	Caddresses = 'addresses'.freeze
	Capplication = 'application'.freeze
	Capplication_data = 'application/data'.freeze
	Cargs = 'args'.freeze
	Cbasedir = 'basedir'.freeze
	Cbaselog = 'baselog'.freeze
	Cbasename = 'basename'.freeze
	Cbody = 'body'.freeze
	CBodyContent = 'BodyContent'.freeze
	Cbrowsers = 'browsers'.freeze
	Cbutton = 'button'.freeze
	Ccacheable = 'cacheable'.freeze
	Ccgi_root = 'cgi_root'.freeze
	Ccheckbox = 'checkbox'.freeze
	Cchecked = 'checked'.freeze
	Cchecksum = 'checksum'.freeze
	CClass = 'Class'.freeze
	Cclass = 'class'.freeze
	Cclosed = 'closed'.freeze
	Ccondition = 'condition'.freeze
	CConnection = 'Connection'.freeze
	CContent_length = 'Content-length'.freeze
	CContent_Length = 'Content-Length'.freeze
	CCONTENT_LENGTH = 'CONTENT-LENGTH'.freeze
	CContent_Type = 'Content-Type'.freeze
	CContent_type = 'Content-type'.freeze
	CCONTENT_TYPE = 'CONTENT_TYPE'.freeze
	CContentClasses = 'ContentClasses'.freeze
	CCookie = 'Cookie'.freeze
	Ccookie = 'cookie'.freeze
	CCOOKIE = 'COOKIE'.freeze
	Ccreate = 'create'.freeze
	Cdaemonize = 'daemonize'.freeze
	Cdatabase = 'database'.freeze
	CDate = 'Date'.freeze
	Cdebug = 'debug'.freeze
	Cdefault = 'default'.freeze
	Cdelete = 'delete'.freeze
	CDELETE = 'DELETE'.freeze
	Cdepth = 'depth'.freeze
	Cdestroy = 'destroy'.freeze
	Cdirectory = 'directory'.freeze
	Cdispatcher = 'dispatcher'.freeze
	Cdo_initial_load = 'do_initial_load'.freeze
	Cdoc_root = 'doc_root'.freeze
	Cdocroot = 'docroot'.freeze # This is deprecated and is only used in the webrick handler.  Remember to remove it when the webrick handler is reworked.
	Cdocroot_caching = 'docroot_caching'.freeze
	CdynamicString = 'dynamicString'.freeze
	Celement = 'element'.freeze
	Cen = 'en'.freeze
	Cerror = 'error'.freeze
	Cexceptions = 'exceptions'.freeze
	Cfalse = 'false'.freeze
	CFALSE = 'false'.freeze
	Cfatal = 'fatal'.freeze
	Cfilename = 'filename'.freeze
	Cfiles = 'files'.freeze
	Cforce = 'force'.freeze
	CEIN = 'EIN'.freeze
	CExpires = 'Expires'.freeze
	CGET = 'GET'.freeze
	CHash = 'Hash'.freeze
	CHEAD = 'HEAD'.freeze
	Cheight = 'height'.freeze
	Chostname = 'hostname'.freeze
	CHOST = 'HOST'.freeze
	Chost = 'host'.freeze
	Chosts = 'hosts'.freeze
	Chref = 'href'.freeze
	CHTTP_ = 'HTTP_'.freeze
	CHTTP_HOST = 'HTTP_HOST'.freeze
	Cid = 'id'.freeze
	CIF_MODIFIED_SINCE = 'IF-MODIFIED-SINCE'.freeze
	Cimage = 'image'.freeze
	Cimage_path = 'image_path'.freeze
	Cinfo = 'info'.freeze
	Cinterval = 'interval'.freeze
	Ciowa_log = 'iowa_log'.freeze
	Ciowa_path = 'iowa_path'.freeze
	Ciowa_root = 'iowa_root'.freeze
	Cips = 'ips'.freeze
	Citem = 'item'.freeze
	Ckey = 'key'.freeze
	Cklass = 'klass'.freeze
	Clabel = 'label'.freeze
	Clast_modification = 'last_modification'.freeze
	Clibrary = 'library'.freeze
	Clink = 'link'.freeze
	Clist = 'list'.freeze
	CLocation = 'Location'.freeze
	Clog_root = 'log_root'.freeze
	Clogger = 'logger'.freeze
	Clogging = 'logging'.freeze
	Clonely_tag_terminator = ' />'.freeze
	CMain = 'Main'.freeze
	Cmapfile = 'mapfile'.freeze
	Cmaxage = 'maxage'.freeze
	Cmaxfiles = 'maxfiles'.freeze
	Cmaxsize = 'maxsize'.freeze
	Cmethod = 'method'.freeze
	Cminlevel = 'minlevel'.freeze
	Cmodel = 'model'.freeze
	CMOD_RUBY = 'MOD_RUBY'.freeze
	Cmultiple = 'multiple'.freeze
	Cname = 'name'.freeze
	COK = 'OK'.freeze
	Cpage = 'page'.freeze
	Cpagecache = 'pagecache'.freeze
	Cparams = 'params'.freeze
	Cpath = 'path'.freeze
	CPATH_INFO = 'PATH_INFO'.freeze
	Cpath_query_interval = 'path_query_interval'.freeze
	Cpolicy = 'policy'.freeze
	Cport = 'port'.freeze
	CPOST = 'POST'.freeze
	Cplural = 'plural'.freeze
	CPUT = 'PUT'.freeze
	CQUERY_STRING = 'QUERY_STRING'.freeze
	Cpost = 'post'.freeze
	Cradio = 'radio'.freeze
	Crefresh = 'refresh'.freeze
	Creload_interval = 'reload_interval'.freeze
	Crequest_cacheable = 'request_cacheable'.freeze
	CREQUEST_METHOD = 'REQUEST_METHOD'.freeze
	CREQUEST_URI = 'REQUEST_URI'.freeze
	Croot_path = 'root_path'.freeze
	Croot_url = 'root_url'.freeze
	Cscreens = 'screens'.freeze
	Cselected = 'selected'.freeze
	Cserialize_templates = 'serialize_templates'.freeze
	CServer = 'Server'.freeze
	CSERVER_NAME = 'SERVER_NAME'.freeze
	Cservice = 'service'.freeze
	Csession = 'session'.freeze
	Csessioncache = 'sessioncache'.freeze
	Cshow = 'show'.freeze
	Csingular = 'singular'.freeze
	Csocket = 'socket'.freeze
	Csrc = 'src'.freeze
	Csubmit = 'submit'.freeze
	Ctagclass = 'tagclass'.freeze
	Ctag = 'tag'.freeze
	CtemplateRoot = 'templateRoot'.freeze
	Ctext_html = 'text/html'.freeze
	Ctext_javascript = 'text/javascript'.freeze
	Ctitle = 'title'.freeze
	Ctrue = 'true'.freeze
	CTRUE = 'TRUE'.freeze
	Cttl = 'ttl'.freeze
	Ctype = 'type'.freeze
	Cupdate = 'update'.freeze
	Cuse_lockfile = 'use_lockfile'.freeze
	CUser_agent = 'User_agent'.freeze
	CUserAgent = 'User-Agent'.freeze
	Cvalue = 'value'.freeze
	Cvariation = 'variation'.freeze
	Cwarn = 'warn'.freeze
	Cwebrick = 'webrick'.freeze
	Cwidth = 'width'.freeze
	CX_FORWARDED_HOST = 'X-FORWARDED-HOST'.freeze
	
	CR_amp = /&/.freeze
	CR_equal = /=/.freeze

end
