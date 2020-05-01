module.exports = {
	devServer : {
		open : true,
		host : '192.168.1.5',
		port : 8848,
		hot : true,
		disableHostCheck:true
	},
	lintOnSave : false,
	configureWebpack: {
        resolve: {
            alias: { //配置别名,修改后需要重新编译才能生效
                'src':'@',
            }
        }
    }
}