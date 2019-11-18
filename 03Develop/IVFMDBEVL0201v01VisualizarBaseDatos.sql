/*==========================================================================	Proyecto					:		Modulo						:		Programa/Funcion			:	 	Analista					:	ALDV	Fecha Inicio/Termino		:		Objetivo					:	Visualizar Base de Datos	Descripcion					:	Si la base de datos no tiene una collección no muestra									la base de datos=============================================================================================*/// 1. Visualizar base de datos use aemsaprueba


##1. Visualizar las base de datos

Uptime:3136 Documents:1 >show dbs

:::
admin          0.000GB
config         0.000GB
ivfevaluation  0.000GB
local          0.000GB
:::

##2. Visualizar comandos de ayuda

Uptime:3136 Documents:1 > db.help()

:::
DB methods:
	db.adminCommand(nameOrDocument) - switches to 'admin' db, and runs command [just calls db.runCommand(...)]
	db.aggregate([pipeline], {options}) - performs a collectionless aggregation on this database; returns a cursor
	db.auth(username, password)
	db.cloneDatabase(fromhost) - will only function with MongoDB 4.0 and below
	db.commandHelp(name) returns the help for the command
	db.copyDatabase(fromdb, todb, fromhost) - will only function with MongoDB 4.0 and below
	db.createCollection(name, {size: ..., capped: ..., max: ...})
	db.createUser(userDocument)
	db.createView(name, viewOn, [{$operator: {...}}, ...], {viewOptions})
	db.currentOp() displays currently executing operations in the db
	db.dropDatabase(writeConcern)
	db.dropUser(username)
	db.eval() - deprecated
	db.fsyncLock() flush data to disk and lock server for backups
	db.fsyncUnlock() unlocks server following a db.fsyncLock()
	db.getCollection(cname) same as db['cname'] or db.cname
	db.getCollectionInfos([filter]) - returns a list that contains the names and options of the db's collections
	db.getCollectionNames()
	db.getLastError() - just returns the err msg string
	db.getLastErrorObj() - return full status object
	db.getLogComponents()
	db.getMongo() get the server connection object
	db.getMongo().setSlaveOk() allow queries on a replication slave server
	db.getName()
	db.getProfilingLevel() - deprecated
	db.getProfilingStatus() - returns if profiling is on and slow threshold
	db.getReplicationInfo()
	db.getSiblingDB(name) get the db at the same server as this one
	db.getWriteConcern() - returns the write concern used for any operations on this db, inherited from server object if set
	db.hostInfo() get details about the server's host
	db.isMaster() check replica primary status
	db.killOp(opid) kills the current operation in the db
	db.listCommands() lists all the db commands
	db.loadServerScripts() loads all the scripts in db.system.js
	db.logout()
	db.printCollectionStats()
	db.printReplicationInfo()
	db.printShardingStatus()
	db.printSlaveReplicationInfo()
	db.resetError()
	db.runCommand(cmdObj) run a database command.  if cmdObj is a string, turns it into {cmdObj: 1}
	db.serverStatus()
	db.setLogLevel(level,<component>)
	db.setProfilingLevel(level,slowms) 0=off 1=slow 2=all
	db.setVerboseShell(flag) display extra information in shell output
	db.setWriteConcern(<write concern doc>) - sets the write concern for writes to the db
	db.shutdownServer()
	db.stats()
	db.unsetWriteConcern(<write concern doc>) - unsets the write concern for writes to the db
	db.version() current version of the server
	db.watch() - opens a change stream cursor for a database to report on all  changes to its non-system collections.

:::

##3. Para ver la implementación de un método en el shell, escriba sin el paréntesis

Uptime:3136 Documents:1 > db.updateUser
:::
function(name, updateObject, writeConcern) {
    var cmdObj = {updateUser: name};
    cmdObj = Object.extend(cmdObj, updateObject);
    cmdObj['writeConcern'] = writeConcern ? writeConcern : _defaultWriteConcern;
    this._modifyCommandToDigestPasswordIfNecessary(cmdObj, name);

    var res = this.runCommand(cmdObj);
    if (res.ok) {
        return;
    }

    if (res.errmsg == "no such cmd: updateUser") {
        this._updateUserV1(name, updateObject, cmdObj['writeConcern']);
        return;
    }

    throw _getErrorWithCode(res, "Updating user failed: " + res.errmsg);
}
:::


