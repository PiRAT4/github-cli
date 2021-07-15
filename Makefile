# $OpenBSD$

BROKEN-aarch64 =	old kr/pty doesn't support OpenBSD arm arches; needs creack/pty@v1.1.11
BROKEN-armv7 =		old kr/pty doesn't support OpenBSD arm arches; needs creack/pty@v1.1.11

COMMENT =	command-line access to github pull requests, issues and more

V =		1.12.1
MODGO_MODNAME =	github.com/cli/cli
MODGO_VERSION =	v$V

DISTNAME =	cli-${MODGO_VERSION}
PKGNAME =	github-cli-$V

CATEGORIES =	devel
HOMEPAGE =	https://cli.github.com/

# MIT
PERMIT_PACKAGE =	Yes

SEPARATE_BUILD =	Yes

WANTLIB +=	c pthread
MODULES =	lang/go
MODGO_LDFLAGS +=	-X "github.com/cli/cli/internal/build.Version=$V"

MODGO_MODULES =	\
	cloud.google.com/go					 v0.46.3 \
	cloud.google.com/go/bigquery				 v1.0.1 \
	cloud.google.com/go/datastore				 v1.0.0 \
	cloud.google.com/go/firestore				 v1.1.0 \
	cloud.google.com/go/pubsub				 v1.0.1 \
	cloud.google.com/go/storage				 v1.0.0 \
	dmitri.shuralyov.com/gpu/mtl				 v0.0.0-20190408044501-666a987793e9 \
	github.com/!alec!aivazis/survey/v2			 v2.2.9 \
	github.com/!burnt!sushi/toml				 v0.3.1 \
	github.com/!burnt!sushi/xgb				 v0.0.0-20160522181843-27f122750802 \
	github.com/!make!now!just/heredoc			 v1.0.0 \
	github.com/!netflix/go-expect				 v0.0.0-20180615182759-c93bf25de8e8 \
	github.com/!one!of!one/xxhash				 v1.2.2 \
	github.com/alecthomas/assert				 v0.0.0-20170929043011-405dbfeb8e38 \
	github.com/alecthomas/chroma				 v0.8.2 \
	github.com/alecthomas/colour				 v0.0.0-20160524082231-60882d9e2721 \
	github.com/alecthomas/kong				 v0.2.4 \
	github.com/alecthomas/repr				 v0.0.0-20180818092828-117648cd9897 \
	github.com/alecthomas/template				 v0.0.0-20160405071501-a0175ee3bccc \
	github.com/alecthomas/units				 v0.0.0-20151022065526-2efee857e7cf \
	github.com/armon/circbuf				 v0.0.0-20150827004946-bbbad097214e \
	github.com/armon/go-metrics				 v0.0.0-20180917152333-f0300d1749da \
	github.com/armon/go-radix				 v0.0.0-20180808171621-7fddfc383310 \
	github.com/aymerick/douceur				 v0.2.0 \
	github.com/beorn7/perks					 v1.0.0 \
	github.com/bgentry/speakeasy				 v0.1.0 \
	github.com/bketelsen/crypt				 v0.0.3-0.20200106085610-5cbc8cc4026c \
	github.com/briandowns/spinner				 v1.11.1 \
	github.com/cespare/xxhash				 v1.1.0 \
	github.com/charmbracelet/glamour			 v0.3.0 \
	github.com/cli/browser					 v1.1.0 \
	github.com/cli/oauth					 v0.8.0 \
	github.com/cli/safeexec					 v1.0.0 \
	github.com/cli/shurcoo!l-graphql			 v0.0.0-20200707151639-0f7232a2bf7e \
	github.com/client9/misspell				 v0.3.4 \
	github.com/coreos/bbolt					 v1.3.2 \
	github.com/coreos/etcd					 v3.3.13+incompatible \
	github.com/coreos/go-semver				 v0.3.0 \
	github.com/coreos/go-systemd				 v0.0.0-20190321100706-95778dfbb74e \
	github.com/coreos/pkg					 v0.0.0-20180928190104-399ea9e2e55f \
	github.com/cpuguy83/go-md2man/v2			 v2.0.0 \
	github.com/creack/pty					 v1.1.13 \
	github.com/danwakefield/fnmatch				 v0.0.0-20160403171240-cbb64ac3d964 \
	github.com/davecgh/go-spew				 v1.1.1 \
	github.com/dgrijalva/jwt-go				 v3.2.0+incompatible \
	github.com/dgryski/go-sip13				 v0.0.0-20181026042036-e10d5fee7954 \
	github.com/dlclark/regexp2				 v1.2.0 \
	github.com/fatih/color					 v1.7.0 \
	github.com/fsnotify/fsnotify				 v1.4.7 \
	github.com/gabriel-vasile/mimetype			 v1.1.2 \
	github.com/ghodss/yaml					 v1.0.0 \
	github.com/go-gl/glfw					 v0.0.0-20190409004039-e6da0acd62b1 \
	github.com/go-kit/kit					 v0.8.0 \
	github.com/go-logfmt/logfmt				 v0.4.0 \
	github.com/go-stack/stack				 v1.8.0 \
	github.com/gogo/protobuf				 v1.2.1 \
	github.com/golang/glog					 v0.0.0-20160126235308-23def4e6c14b \
	github.com/golang/groupcache				 v0.0.0-20190129154638-5b532d6fd5ef \
	github.com/golang/mock					 v1.3.1 \
	github.com/golang/protobuf				 v1.3.2 \
	github.com/google/btree					 v1.0.0 \
	github.com/google/go-cmp				 v0.5.2 \
	github.com/google/martian				 v2.1.0+incompatible \
	github.com/google/pprof					 v0.0.0-20190515194954-54271f7e092f \
	github.com/google/renameio				 v0.1.0 \
	github.com/google/shlex					 v0.0.0-20191202100458-e7afc7fbc510 \
	github.com/googleapis/gax-go/v2				 v2.0.5 \
	github.com/gopherjs/gopherjs				 v0.0.0-20181017120253-0766667cb4d1 \
	github.com/gorilla/css					 v1.0.0 \
	github.com/gorilla/websocket				 v1.4.2 \
	github.com/graph-gophers/graphql-go			 v0.0.0-20200622220639-c1d9693c95a6 \
	github.com/grpc-ecosystem/go-grpc-middleware		 v1.0.0 \
	github.com/grpc-ecosystem/go-grpc-prometheus		 v1.2.0 \
	github.com/grpc-ecosystem/grpc-gateway			 v1.9.0 \
	github.com/hashicorp/consul/api				 v1.1.0 \
	github.com/hashicorp/consul/sdk				 v0.1.1 \
	github.com/hashicorp/errwrap				 v1.0.0 \
	github.com/hashicorp/go-cleanhttp			 v0.5.1 \
	github.com/hashicorp/go-immutable-radix			 v1.0.0 \
	github.com/hashicorp/go-msgpack				 v0.5.3 \
	github.com/hashicorp/go-multierror			 v1.0.0 \
	github.com/hashicorp/go-rootcerts			 v1.0.0 \
	github.com/hashicorp/go-sockaddr			 v1.0.0 \
	github.com/hashicorp/go-syslog				 v1.0.0 \
	github.com/hashicorp/go-uuid				 v1.0.1 \
	github.com/hashicorp/go-version				 v1.2.1 \
	github.com/hashicorp/go.net				 v0.0.1 \
	github.com/hashicorp/golang-lru				 v0.5.1 \
	github.com/hashicorp/hcl				 v1.0.0 \
	github.com/hashicorp/logutils				 v1.0.0 \
	github.com/hashicorp/mdns				 v1.0.0 \
	github.com/hashicorp/memberlist				 v0.1.3 \
	github.com/hashicorp/serf				 v0.8.2 \
	github.com/henvic/httpretty				 v0.0.6 \
	github.com/hinshun/vt10x				 v0.0.0-20180616224451-1954e6464174 \
	github.com/inconshreveable/mousetrap			 v1.0.0 \
	github.com/itchyny/astgen-go				 v0.0.0-20210113000433-0da0671862a3 \
	github.com/itchyny/go-flags				 v1.5.0 \
	github.com/itchyny/gojq					 v0.12.1 \
	github.com/itchyny/timefmt-go				 v0.1.1 \
	github.com/jonboulle/clockwork				 v0.1.0 \
	github.com/json-iterator/go				 v1.1.6 \
	github.com/jstemmer/go-junit-report			 v0.0.0-20190106144839-af01ea7f8024 \
	github.com/jtolds/gls					 v4.20.0+incompatible \
	github.com/julienschmidt/httprouter			 v1.2.0 \
	github.com/kballard/go-shellquote			 v0.0.0-20180428030007-95032a82bc51 \
	github.com/kisielk/errcheck				 v1.1.0 \
	github.com/kisielk/gotool				 v1.0.0 \
	github.com/konsorten/go-windows-terminal-sequences	 v1.0.1 \
	github.com/kr/logfmt					 v0.0.0-20140226030751-b84e30acd515 \
	github.com/kr/pretty					 v0.1.0 \
	github.com/kr/pty					 v1.1.4 \
	github.com/kr/text					 v0.1.0 \
	github.com/lucasb-eyer/go-colorful			 v1.2.0 \
	github.com/magiconair/properties			 v1.8.1 \
	github.com/mattn/go-colorable				 v0.1.8 \
	github.com/mattn/go-isatty				 v0.0.12 \
	github.com/mattn/go-runewidth				 v0.0.10 \
	github.com/matttproud/golang_protobuf_extensions	 v1.0.1 \
	github.com/mgutz/ansi					 v0.0.0-20200706080929-d51e80ef957d \
	github.com/microcosm-cc/bluemonday			 v1.0.6 \
	github.com/miekg/dns					 v1.0.14 \
	github.com/mitchellh/cli				 v1.0.0 \
	github.com/mitchellh/go-homedir				 v1.1.0 \
	github.com/mitchellh/go-testing-interface		 v1.0.0 \
	github.com/mitchellh/gox				 v0.4.0 \
	github.com/mitchellh/iochan				 v1.0.0 \
	github.com/mitchellh/mapstructure			 v1.1.2 \
	github.com/modern-go/concurrent				 v0.0.0-20180306012644-bacd9c7ef1dd \
	github.com/modern-go/reflect2				 v1.0.1 \
	github.com/muesli/reflow				 v0.2.0 \
	github.com/muesli/termenv				 v0.8.1 \
	github.com/mwitkow/go-conntrack				 v0.0.0-20161129095857-cc309e4a2223 \
	github.com/oklog/ulid					 v1.3.1 \
	github.com/olekukonko/tablewriter			 v0.0.5 \
	github.com/opentracing/opentracing-go			 v1.1.0 \
	github.com/pascaldekloe/goe				 v0.0.0-20180627143212-57f6aae5913c \
	github.com/pelletier/go-toml				 v1.2.0 \
	github.com/pkg/errors					 v0.9.1 \
	github.com/pmezard/go-difflib				 v1.0.0 \
	github.com/posener/complete				 v1.1.1 \
	github.com/prometheus/client_golang			 v0.9.3 \
	github.com/prometheus/client_model			 v0.0.0-20190129233127-fd36f4220a90 \
	github.com/prometheus/common				 v0.4.0 \
	github.com/prometheus/procfs				 v0.0.0-20190507164030-5867b95ac084 \
	github.com/prometheus/tsdb				 v0.7.1 \
	github.com/rivo/uniseg					 v0.2.0 \
	github.com/rogpeppe/fastuuid				 v0.0.0-20150106093220-6724a57986af \
	github.com/rogpeppe/go-internal				 v1.3.0 \
	github.com/russross/blackfriday/v2			 v2.0.1 \
	github.com/ryanuber/columnize				 v0.0.0-20160712163229-9b3edd62028f \
	github.com/sean-/seed					 v0.0.0-20170313163322-e2103e2c3529 \
	github.com/sergi/go-diff				 v1.0.0 \
	github.com/shurcoo!l/githubv4				 v0.0.0-20200928013246-d292edc3691b \
	github.com/shurcoo!l/graphql				 v0.0.0-20181231061246-d48a9a75455f \
	github.com/shurcoo!l/sanitized_anchor_name		 v1.0.0 \
	github.com/sirupsen/logrus				 v1.2.0 \
	github.com/smartystreets/assertions			 v0.0.0-20180927180507-b2de0cb4f26d \
	github.com/smartystreets/goconvey			 v1.6.4 \
	github.com/soheilhy/cmux				 v0.1.4 \
	github.com/spaolacci/murmur3				 v0.0.0-20180118202830-f09979ecbc72 \
	github.com/spf13/afero					 v1.1.2 \
	github.com/spf13/cast					 v1.3.0 \
	github.com/spf13/cobra					 v1.1.3 \
	github.com/spf13/jwalterweatherman			 v1.0.0 \
	github.com/spf13/pflag					 v1.0.5 \
	github.com/spf13/viper					 v1.7.0 \
	github.com/stretchr/objx				 v0.1.1 \
	github.com/stretchr/testify				 v1.6.1 \
	github.com/subosito/gotenv				 v1.2.0 \
	github.com/tmc/grpc-websocket-proxy			 v0.0.0-20190109142713-0ad062ec5ee5 \
	github.com/xiang90/probing				 v0.0.0-20190116061207-43a291ad63a2 \
	github.com/yuin/goldmark				 v1.3.3 \
	github.com/yuin/goldmark-emoji				 v1.0.1 \
	go.etcd.io/bbolt					 v1.3.2 \
	go.opencensus.io					 v0.22.0 \
	go.uber.org/atomic					 v1.4.0 \
	go.uber.org/multierr					 v1.1.0 \
	go.uber.org/zap						 v1.10.0 \
	golang.org/x/crypto					 v0.0.0-20201016220609-9e8e0b390897 \
	golang.org/x/exp					 v0.0.0-20191030013958-a1ab85dbe136 \
	golang.org/x/image					 v0.0.0-20190802002840-cff245a6509b \
	golang.org/x/lint					 v0.0.0-20190930215403-16217165b5de \
	golang.org/x/mobile					 v0.0.0-20190719004257-d2bd2a29d028 \
	golang.org/x/mod					 v0.1.0 \
	golang.org/x/net					 v0.0.0-20210331212208-0fccb6fa2b5c \
	golang.org/x/oauth2					 v0.0.0-20190604053449-0f29369cfe45 \
	golang.org/x/sync					 v0.0.0-20190423024810-112230192c58 \
	golang.org/x/sys					 v0.0.0-20210330210617-4fbd30eecc44 \
	golang.org/x/term					 v0.0.0-20210422114643-f5beecf764ed \
	golang.org/x/text					 v0.3.4 \
	golang.org/x/time					 v0.0.0-20190308202827-9d24e82272b4 \
	golang.org/x/tools					 v0.0.0-20191112195655-aa38f8e97acc \
	golang.org/x/xerrors					 v0.0.0-20191204190536-9bdfabe68543 \
	google.golang.org/api					 v0.13.0 \
	google.golang.org/appengine				 v1.6.1 \
	google.golang.org/genproto				 v0.0.0-20191108220845-16a3f7862a1a \
	google.golang.org/grpc					 v1.21.1 \
	gopkg.in/alecthomas/kingpin.v2				 v2.2.6 \
	gopkg.in/check.v1					 v1.0.0-20180628173108-788fd7840127 \
	gopkg.in/errgo.v2					 v2.1.0 \
	gopkg.in/ini.v1						 v1.51.0 \
	gopkg.in/resty.v1					 v1.12.0 \
	gopkg.in/yaml.v2					 v2.4.0 \
	gopkg.in/yaml.v3					 v3.0.0-20210107192922-496545a6307b \
	honnef.co/go/tools					 v0.0.1-2019.2.3 \
	rsc.io/binaryregexp					 v0.2.0

MODGO_MODFILES =	\
	cloud.google.com/go			 v0.26.0 \
	cloud.google.com/go			 v0.34.0 \
	cloud.google.com/go			 v0.38.0 \
	cloud.google.com/go			 v0.44.1 \
	cloud.google.com/go			 v0.44.2 \
	cloud.google.com/go			 v0.45.1 \
	github.com/beorn7/perks			 v0.0.0-20180321164747-3a771d992973 \
	github.com/cli/browser			 v1.0.0 \
	github.com/davecgh/go-spew		 v1.1.0 \
	github.com/go-logfmt/logfmt		 v0.3.0 \
	github.com/gogo/protobuf		 v1.1.1 \
	github.com/golang/mock			 v1.1.1 \
	github.com/golang/mock			 v1.2.0 \
	github.com/golang/protobuf		 v1.2.0 \
	github.com/golang/protobuf		 v1.3.1 \
	github.com/google/btree			 v0.0.0-20180813153112-4030bb1f1f0c \
	github.com/google/go-cmp		 v0.2.0 \
	github.com/google/go-cmp		 v0.3.0 \
	github.com/google/pprof			 v0.0.0-20181206194817-3ea8567a2e57 \
	github.com/googleapis/gax-go/v2		 v2.0.4 \
	github.com/hashicorp/go-uuid		 v1.0.0 \
	github.com/hashicorp/golang-lru		 v0.5.0 \
	github.com/kr/pty			 v1.1.1 \
	github.com/mattn/go-colorable		 v0.0.9 \
	github.com/mattn/go-colorable		 v0.1.2 \
	github.com/mattn/go-colorable		 v0.1.6 \
	github.com/mattn/go-isatty		 v0.0.3 \
	github.com/mattn/go-isatty		 v0.0.8 \
	github.com/mattn/go-runewidth		 v0.0.9 \
	github.com/mgutz/ansi			 v0.0.0-20170206155736-9520e82c474b \
	github.com/mitchellh/go-homedir		 v1.0.0 \
	github.com/mitchellh/mapstructure	 v0.0.0-20160808181253-ca63d7c062ee \
	github.com/pkg/errors			 v0.8.0 \
	github.com/pkg/errors			 v0.8.1 \
	github.com/prometheus/client_golang	 v0.9.1 \
	github.com/prometheus/client_model	 v0.0.0-20180712105110-5c3871d89910 \
	github.com/prometheus/common		 v0.0.0-20181113130724-41aa239b4cce \
	github.com/prometheus/procfs		 v0.0.0-20181005140218-185b4288413d \
	github.com/rivo/uniseg			 v0.1.0 \
	github.com/spf13/pflag			 v1.0.3 \
	github.com/stretchr/objx		 v0.1.0 \
	github.com/stretchr/testify		 v1.2.1 \
	github.com/stretchr/testify		 v1.2.2 \
	github.com/stretchr/testify		 v1.3.0 \
	github.com/yuin/goldmark		 v1.2.1 \
	go.opencensus.io			 v0.21.0 \
	golang.org/x/crypto			 v0.0.0-20180904163835-0709b304e793 \
	golang.org/x/crypto			 v0.0.0-20181029021203-45a5f77698d3 \
	golang.org/x/crypto			 v0.0.0-20190308221718-c2843e01d9a2 \
	golang.org/x/crypto			 v0.0.0-20190510104115-cbcb75029529 \
	golang.org/x/crypto			 v0.0.0-20190530122614-20be4c3c3ed5 \
	golang.org/x/crypto			 v0.0.0-20190605123033-f99c8df09eb5 \
	golang.org/x/crypto			 v0.0.0-20200622213623-75b288015ac9 \
	golang.org/x/exp			 v0.0.0-20190121172915-509febef88a4 \
	golang.org/x/exp			 v0.0.0-20190306152737-a1d7652674e8 \
	golang.org/x/exp			 v0.0.0-20190510132918-efd6b22b2522 \
	golang.org/x/exp			 v0.0.0-20190829153037-c13cbed26979 \
	golang.org/x/image			 v0.0.0-20190227222117-0694c2d4d067 \
	golang.org/x/lint			 v0.0.0-20181026193005-c67002cb31c3 \
	golang.org/x/lint			 v0.0.0-20190227174305-5b3e6a55c961 \
	golang.org/x/lint			 v0.0.0-20190301231843-5614ed5bae6f \
	golang.org/x/lint			 v0.0.0-20190313153728-d0100b6bd8b3 \
	golang.org/x/lint			 v0.0.0-20190409202823-959b441ac422 \
	golang.org/x/lint			 v0.0.0-20190909230951-414d861bb4ac \
	golang.org/x/mobile			 v0.0.0-20190312151609-d3739f865fa6 \
	golang.org/x/mod			 v0.0.0-20190513183733-4bf6d317e70e \
	golang.org/x/net			 v0.0.0-20180724234803-3673e40ba225 \
	golang.org/x/net			 v0.0.0-20180826012351-8a410e7b638d \
	golang.org/x/net			 v0.0.0-20181023162649-9b4f9f5ad519 \
	golang.org/x/net			 v0.0.0-20181114220301-adae6a3d119a \
	golang.org/x/net			 v0.0.0-20181201002055-351d144fa1fc \
	golang.org/x/net			 v0.0.0-20181220203305-927f97764cc3 \
	golang.org/x/net			 v0.0.0-20190108225652-1e06a53dbb7e \
	golang.org/x/net			 v0.0.0-20190213061140-3a22650c66bd \
	golang.org/x/net			 v0.0.0-20190311183353-d8887717615a \
	golang.org/x/net			 v0.0.0-20190404232315-eb5bcb51f2a3 \
	golang.org/x/net			 v0.0.0-20190501004415-9ce7a6920f09 \
	golang.org/x/net			 v0.0.0-20190503192946-f4e77d36d62c \
	golang.org/x/net			 v0.0.0-20190603091049-60506f45cf65 \
	golang.org/x/net			 v0.0.0-20190620200207-3b0461eec859 \
	golang.org/x/net			 v0.0.0-20200707034311-ab3426394381 \
	golang.org/x/oauth2			 v0.0.0-20180821212333-d2e6202438be \
	golang.org/x/oauth2			 v0.0.0-20190226205417-e64efc72b421 \
	golang.org/x/sync			 v0.0.0-20180314180146-1d60e4601c6f \
	golang.org/x/sync			 v0.0.0-20181108010431-42b317875d0f \
	golang.org/x/sync			 v0.0.0-20181221193216-37e7f081c4d4 \
	golang.org/x/sync			 v0.0.0-20190227155943-e225da77a7e6 \
	golang.org/x/sys			 v0.0.0-20180823144017-11551d06cbcc \
	golang.org/x/sys			 v0.0.0-20180830151530-49385e6e1522 \
	golang.org/x/sys			 v0.0.0-20180905080454-ebe1bf3edb33 \
	golang.org/x/sys			 v0.0.0-20181026203630-95b1ffbd15a5 \
	golang.org/x/sys			 v0.0.0-20181107165924-66b7b1311ac8 \
	golang.org/x/sys			 v0.0.0-20181116152217-5ac8a444bdc5 \
	golang.org/x/sys			 v0.0.0-20190215142949-d0b11bdaac8a \
	golang.org/x/sys			 v0.0.0-20190222072716-a9d3bda3a223 \
	golang.org/x/sys			 v0.0.0-20190312061237-fead79001313 \
	golang.org/x/sys			 v0.0.0-20190412213103-97732733099d \
	golang.org/x/sys			 v0.0.0-20190502145724-3ef323f4f1fd \
	golang.org/x/sys			 v0.0.0-20190507160741-ecd444e8653b \
	golang.org/x/sys			 v0.0.0-20190530182044-ad28b68e88f1 \
	golang.org/x/sys			 v0.0.0-20190606165138-5da285871e9c \
	golang.org/x/sys			 v0.0.0-20190624142023-c5567b49c5d0 \
	golang.org/x/sys			 v0.0.0-20200116001909-b77594299b42 \
	golang.org/x/sys			 v0.0.0-20200212091648-12a6c2dcc1e4 \
	golang.org/x/sys			 v0.0.0-20200223170610-d5e6a3e2c0ae \
	golang.org/x/sys			 v0.0.0-20200323222414-85ca7c5b95cd \
	golang.org/x/sys			 v0.0.0-20200413165638-669c56c373c4 \
	golang.org/x/sys			 v0.0.0-20201119102817-f84b799fce68 \
	golang.org/x/sys			 v0.0.0-20210113181707-4bcb84eeeb78 \
	golang.org/x/sys			 v0.0.0-20210319071255-635bc2c9138d \
	golang.org/x/term			 v0.0.0-20201126162022-7de9c90e9dd1 \
	golang.org/x/text			 v0.3.0 \
	golang.org/x/text			 v0.3.1-0.20180807135948-17ff2d5776d2 \
	golang.org/x/text			 v0.3.2 \
	golang.org/x/text			 v0.3.3 \
	golang.org/x/time			 v0.0.0-20181108054448-85acf8d2951c \
	golang.org/x/tools			 v0.0.0-20180221164845-07fd8470d635 \
	golang.org/x/tools			 v0.0.0-20180917221912-90fa682c2a6e \
	golang.org/x/tools			 v0.0.0-20190114222345-bf090417da8b \
	golang.org/x/tools			 v0.0.0-20190226205152-f727befe758c \
	golang.org/x/tools			 v0.0.0-20190311212946-11955173bddd \
	golang.org/x/tools			 v0.0.0-20190312151545-0bb0c0a6e846 \
	golang.org/x/tools			 v0.0.0-20190312170243-e65039ee4138 \
	golang.org/x/tools			 v0.0.0-20190328211700-ab21143f2384 \
	golang.org/x/tools			 v0.0.0-20190425150028-36563e24a262 \
	golang.org/x/tools			 v0.0.0-20190506145303-2d16b83fe98c \
	golang.org/x/tools			 v0.0.0-20190606124116-d0a3d012864b \
	golang.org/x/tools			 v0.0.0-20190621195816-6e04913cbbac \
	golang.org/x/tools			 v0.0.0-20190628153133-6cdbf07be9d0 \
	golang.org/x/tools			 v0.0.0-20190816200558-6889da9d5479 \
	golang.org/x/tools			 v0.0.0-20190911174233-4f2ddba30aff \
	golang.org/x/tools			 v0.0.0-20191012152004-8de300cfc20a \
	golang.org/x/xerrors			 v0.0.0-20190717185122-a985d3407aa7 \
	google.golang.org/api			 v0.4.0 \
	google.golang.org/api			 v0.7.0 \
	google.golang.org/api			 v0.8.0 \
	google.golang.org/api			 v0.9.0 \
	google.golang.org/appengine		 v1.1.0 \
	google.golang.org/appengine		 v1.4.0 \
	google.golang.org/appengine		 v1.5.0 \
	google.golang.org/genproto		 v0.0.0-20180817151627-c66870c02cf8 \
	google.golang.org/genproto		 v0.0.0-20190307195333-5fe7a883aa19 \
	google.golang.org/genproto		 v0.0.0-20190418145605-e7d98fc518a7 \
	google.golang.org/genproto		 v0.0.0-20190425155659-357c62f0e4bb \
	google.golang.org/genproto		 v0.0.0-20190502173448-54afdca5d873 \
	google.golang.org/genproto		 v0.0.0-20190801165951-fa694d86fc64 \
	google.golang.org/genproto		 v0.0.0-20190819201941-24fa4b261c55 \
	google.golang.org/genproto		 v0.0.0-20190911173649-1774047e7e51 \
	google.golang.org/grpc			 v1.19.0 \
	google.golang.org/grpc			 v1.20.1 \
	gopkg.in/check.v1			 v0.0.0-20161208181325-20d25e280405 \
	gopkg.in/yaml.v2			 v2.0.0-20170812160011-eb3733d160e7 \
	gopkg.in/yaml.v2			 v2.2.1 \
	gopkg.in/yaml.v2			 v2.2.4 \
	gopkg.in/yaml.v3			 v3.0.0-20200313102051-9f266ea9e77c \
	honnef.co/go/tools			 v0.0.0-20190102054323-c2f93a96b099 \
	honnef.co/go/tools			 v0.0.0-20190106161140-3f1c8253044a \
	honnef.co/go/tools			 v0.0.0-20190418001031-e561f6794a2a

post-install:
	${WRKDIR}/go/bin/gen-docs --doc-path ${PREFIX}/man/man1 --man-page
	rm ${PREFIX}/bin/gen-docs

.include <bsd.port.mk>
