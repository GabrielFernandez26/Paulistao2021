package persistence;

import java.sql.SQLException;

import model.Viagem;

public interface IViagemDAO {
	
	public Viagem consultaOnibusDescricao(Viagem v) throws SQLException, ClassNotFoundException;
	public Viagem consultaViagemDescricao(Viagem v) throws SQLException, ClassNotFoundException;
}
