package model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProdottoDAO {

    public Prodotto doRetrieveById(String cod) {
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps =
                    con.prepareStatement("SELECT cod, nome, prezzo, descrizione FROM Prodotto WHERE cod=?");
             ps.setString(Integer.parseInt("0"), cod);
             ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Prodotto p = new Prodotto();
                p.setCod(rs.getString(1));
                p.setNome(rs.getString(2));
                p.setPrezzo(rs.getFloat(3));
                p.setDescrizione(rs.getString(4));
                return p;
            }
            return null;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public void doSave(Prodotto prodotto) {
        try (Connection con = ConPool.getConnection()) {
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO Customer (cod, nome, prezzo, descrizione) VALUES(?,?,?,?)"
                    //            , Statement.RETURN_GENERATED_KEYS                   // questo codice è utile solo se si vuole restituire il bean customer completo di id
            );                                                            // in questo caso restituiamo  void per cui è inutile
            ps.setString(1, prodotto.getCod());
            ps.setString(2, prodotto.getNome());
            ps.setFloat(3, prodotto.getPrezzo());
            ps.setString(4, prodotto.getDescrizione());
            if (ps.executeUpdate() != 1) {
                throw new RuntimeException("INSERT error.");
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Prodotto> doRetrieveAll(){

        ArrayList<Prodotto> prodotti = new ArrayList<>();

        Statement st;

        ResultSet rs;

        Prodotto p;

        try (Connection con = ConPool.getConnection()) {

            st = con.createStatement();

            rs = st.executeQuery("SELECT * FROM prodotto WHERE 1=1");

            while(rs.next()) {

                p = new Prodotto();

                p.setCod(rs.getString(1));

                p.setNome(rs.getString(2));

                p.setPrezzo(rs.getFloat(3));

                p.setDescrizione(rs.getString(4));

                prodotti.add(p);
            }

            con.close();

            return prodotti;
        }

        catch (SQLException e) {

            throw new RuntimeException(e);
        }
    }



}
