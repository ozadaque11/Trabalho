package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.Postagem;
import beans.Respostas;
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
	public List<Postagem> buscarPostagem(Postagem busca) throws Exception {
		List<Postagem> pegos = new ArrayList<>();
		
		PreparedStatement stmt = connection.prepareStatement("select * from postagem where usuario_idusuario=?");
		stmt.setInt(1, busca.getId());
		ResultSet rs = stmt.executeQuery();
		
	
		while (rs.next()) {
			Postagem pegar = new Postagem();
			pegar.setPergunta(rs.getString("pergunta"));
			pegar.setDescricao(rs.getString("descricao"));
			pegar.setIdpostagem(rs.getInt("idpostagem"));
			
			pegos.add(pegar);
		

		}
		
		return pegos;
		

	}
	public List<Respostas> buscarRespostas(Respostas busca) throws Exception {
		List<Respostas> pegos = new ArrayList<>();
	
		PreparedStatement stmt = connection.prepareStatement("select * from respostas where postagem_idpostagem=?");
		System.out.println(busca.getId_postagem());
		stmt.setInt(1, busca.getId_postagem());
		
		ResultSet rs = stmt.executeQuery();
		
	
		while (rs.next()) {
			Respostas pegar = new Respostas();
			pegar.setId(rs.getInt("idrespostas")); 
			pegar.setMensagem(rs.getString("resposta"));
			pegar.setIdpostagem(rs.getInt("postagem_idpostagem"));
			pegar.setId(rs.getInt("postagem_usuario_idusuario"));
			System.out.println(pegar.getMensagem());
			System.out.println(pegar.getId_postagem());
			pegos.add(pegar);
		

		}
		
		return pegos;
		

	}
}
