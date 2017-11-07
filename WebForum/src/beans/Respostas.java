package beans;

public class Respostas extends Postagem{
	private int id_postagem;
	private int id;
	private String mensagem;
	
	public Respostas() {
		
	}

	public int getId_postagem() {
		return id_postagem;
	}

	public void setId_postagem(int id_postagem) {
		this.id_postagem = id_postagem;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMensagem() {
		return mensagem;
	}

	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}
	
}
