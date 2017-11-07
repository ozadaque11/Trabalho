package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import beans.Usuario;
import connection.SingleConnection;

public class DaoUsuario {
	private Connection connection;

	public DaoUsuario() {

		// CONSTRUTOR:
		connection = SingleConnection.getConection();
	}

	// Metodo de login
	public boolean login(Usuario usuario) throws Exception {

		PreparedStatement stmt = connection.prepareStatement("select * from usuario where email=? and senha=?");
		stmt.setString(1, usuario.getEmail());
		stmt.setString(2, usuario.getSenha());
		ResultSet rs = stmt.executeQuery();

		if (rs.next()) {
			// DEU CERTO:
			return true;
		} else {
			// DEU ERRO:
			return false;
		}

	}

	// Read
	public Usuario buscarUsuario(Usuario user) throws Exception {
		Usuario usuario = new Usuario();

		PreparedStatement stmt = connection.prepareStatement("select * from usuario where email=?");
		stmt.setString(1, user.getEmail());
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			usuario.setId(rs.getInt("idusuario"));
			usuario.setNome(rs.getString("nome"));
			usuario.setEmail(rs.getString("email"));
			usuario.setSenha(rs.getString("senha"));
			usuario.setDataNascimento(rs.getString("dataNascimento"));
			usuario.setEndereco(rs.getString("endereco"));
			usuario.setTelefone(rs.getString("telefone"));
			usuario.setSexo(rs.getString("sexo"));
			usuario.setPerfil(rs.getString("perfil"));;

		}
		return usuario;

	}

	// Create
	public void cadastroUsuario(Usuario usuario) {
		try {

			PreparedStatement stmt = connection.prepareStatement(
					"insert into usuario(nome, telefone, endereco, sexo, email, senha, dataNascimento, perfil) value(?,?,?,?,?,?,?,?)");
			stmt.setString(1, usuario.getNome());
			//
			stmt.setString(2, usuario.getTelefone());
			stmt.setString(3, usuario.getEndereco());
			stmt.setString(4, usuario.getSexo());
			stmt.setString(5, usuario.getEmail());
			stmt.setString(6, usuario.getSenha());
			stmt.setString(7, usuario.getDataNascimento());
			stmt.setString(8, usuario.getPerfil());
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

	// Update
	public void atualizarCadastroUsuario(Usuario usuario) {
		try {

			PreparedStatement stmt = connection.prepareStatement(
					"update usuario set nome=?, telefone=?, endereco=?, sexo=?,email=?, senha=?, dataNascimento=?, perfil =? where idusuario=? ");
			stmt.setString(1, usuario.getNome());
			//
			stmt.setString(2, usuario.getTelefone());
			stmt.setString(3, usuario.getEndereco());
			stmt.setString(4, usuario.getSexo());
			stmt.setString(5, usuario.getEmail());
			stmt.setString(6, usuario.getSenha());
			stmt.setString(7, usuario.getDataNascimento());
			stmt.setString(8, usuario.getPerfil());
			stmt.setInt(9, usuario.getId());
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

	// Delete
	public void deletarCadastro(Usuario usuario) throws Exception {

		PreparedStatement stmt = connection.prepareStatement("delete from usuario where id=?");
		stmt.setInt(1, usuario.getId());

		stmt.execute();

	}
}
