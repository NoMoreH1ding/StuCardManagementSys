package edu.swu.scms.tool;

import java.sql.ResultSet;
import java.sql.SQLException;

public interface ResultSetHandler {
    public void handle(ResultSet rs) throws SQLException;
}
