package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.Postagem;
import beans.Usuario;
import connection.SingleConnection;

public class DaoPostagem {
	
	private Connection connection;

	public DaoPostagem() {
		
		// CONSTRUTOR:
		connection = SingleConnection.getConection();
	}
	
	public void cadastroTopico(Postagem topico) {
		try {

			PreparedStatement stmt = connection.prepareStatement(
					"insert into postagem(usuario_idusuario, topico, pergunta, descricao) value(?,?,?,?)");
			stmt.setInt(1, topico.getId());
			stmt.setString(2, topico.getTopico());
			stmt.setString(3,topico.getPergunta());
			stmt.setString(4,topico.getDescricao());
			
			stmt.execute();

			connection.commit();

		} catch (SQLException e) {
			e.printStackTrace();
			try {
				connection.rollback();
			} catch (SQLException e1) {

				e1.printStackTrace();
			}
		}

	}
	public List<Postagem> buscarTopico(Postagem busca) throws Exception {
		List<Postagem> pegos = new ArrayList<>();

		PreparedStatement stmt = connection.prepareStatement("select * from postagem where topico=?");
		stmt.setString(1, busca.getTopico());
		ResultSet rs = stmt.executeQuery();
		
	
		while (rs.next()) {
			Postagem pegar = new Postagem();
			pegar.setPergunta(rs.getString("pergunta"));
			pegar.setDescricao(rs.getString("descricao"));
			pegos.add(pegar);
		

		}
		
		return pegos;
		

	}
}
