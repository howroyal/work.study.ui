package work.study.ui.util;

import org.hibernate.dialect.MySQL5InnoDBDialect;

public class Mysql5InnoDBUtf8Dialect extends MySQL5InnoDBDialect{

	@Override
	public String getTableTypeString() {
		return " ENGINE=InnoDB DEFAULT CHARSET=utf8";
	}

	
}
