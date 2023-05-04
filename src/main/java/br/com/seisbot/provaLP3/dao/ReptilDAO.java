package br.com.seisbot.provaLP3.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import br.com.seisbot.provaLP3.model.*;
import br.com.seisbot.provaLP3.dao.util.Connect;

public class ReptilDAO {

	private Connection connection;

	private void connect() throws SQLException {
		if (connection == null || connection.isClosed()) {
			connection = Connect.getConexao();
		}
	}

	private void disconnect() throws SQLException {
		if (connection != null && !connection.isClosed()) {
			connection.close();
		}
	}

	public Reptil insertReptil(Reptil reptil) throws SQLException {
		String sql = "INSERT INTO reptil(temperatura, tamanho, escama)" + " VALUES (?, ?, ?)";

		connect();

		PreparedStatement statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
		statement.setString(1, reptil.getTemperatura());
		statement.setString(2, reptil.getTamanho());
		statement.setBoolean(3, reptil.isEscama());
		statement.executeUpdate();

		ResultSet resultSet = statement.getGeneratedKeys();
		long id = 0;
		if (resultSet.next())
			id = resultSet.getInt("id");
		statement.close();

		disconnect();

		reptil.setId(id);
		return reptil;
	}
	
	public List<Reptil> listReptil() throws SQLException {

		List<Reptil> reptilList = new ArrayList<Reptil>();
		String query = "select * from reptil order by id";

		connect();

		Statement statement = connection.createStatement();
		ResultSet result = statement.executeQuery(query);

		while (result.next()) {
			long id = result.getLong("id");
			String temperatura = result.getString("temperatura");
			String tamanho = result.getString("tamanho");
			boolean escama = result.getBoolean("escama");

			Reptil reptil = new Reptil(temperatura, tamanho, escama);
			reptil.setId(id);
			reptilList.add(reptil);
		}
		result.close();
		disconnect();

		return reptilList;
	}

}
