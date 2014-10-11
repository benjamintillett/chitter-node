var userTable = sequalize.define('user'), {
	user_id: Sequelize.STRING,
    name: DataTypes.STRING,
    password: DataTypes.STRING,
}
userTable.sync()
