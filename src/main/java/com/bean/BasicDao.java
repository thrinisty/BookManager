package com.bean;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.Connection;
import java.util.List;

public class BasicDao<T> {//使用泛型指定具体类型
    private QueryRunner qr = new QueryRunner();

    //开发通用的dml方法，针对任意的表
    public int update(String sql, Object... parameters) {
        Connection connection = null;
        try {
            connection = JDBCUtilsDruid.getConnection();
            return qr.update(connection, sql, parameters);
            //返回受影响的行数，执行语句
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            JDBCUtilsDruid.close(null, null, connection);
        }
    }

    //返回对个查询对象
    public List<T> queryMulti(String sql, Class<T> cls, Object... parameters) {
        Connection connection = null;
        try {
            connection = JDBCUtilsDruid.getConnection();
            return qr.query(connection, sql, new BeanListHandler<T>(cls), parameters);
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            JDBCUtilsDruid.close(null, null, connection);
        }
    }

    //返回查询单行结果
    public T querySingle(String sql, Class<T> cls, Object... parameters) {
        Connection connection = null;
        try {
            connection = JDBCUtilsDruid.getConnection();
            return qr.query(connection, sql, new BeanHandler<T>(cls), parameters);
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            JDBCUtilsDruid.close(null, null, connection);
        }
    }

    //查询单行单列的方法
    public Object queryScalar(String sql, Object... parameters) {
        Connection connection = null;
        try {
            connection = JDBCUtilsDruid.getConnection();
            return qr.query(connection, sql, new ScalarHandler(), parameters);
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            JDBCUtilsDruid.close(null, null, connection);
        }
    }
}
