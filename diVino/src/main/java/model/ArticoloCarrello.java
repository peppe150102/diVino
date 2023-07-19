package model;

public class ArticoloCarrello {

    private String id,codiceProdotto,idC;
    private float prezzoUnita;
    private int quantita;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCodiceProdotto() {
        return codiceProdotto;
    }

    public void setCodiceProdotto(String codiceProdotto) {
        this.codiceProdotto = codiceProdotto;
    }

    public String getIdC() {
        return idC;
    }

    public void setIdC(String idC) {
        this.idC = idC;
    }

    public float getPrezzoUnita() {
        return prezzoUnita;
    }

    public void setPrezzoUnita(float prezzoUnita) {
        this.prezzoUnita = prezzoUnita;
    }

    public int getQuantita() {
        return quantita;
    }

    public void setQuantita(int quantita) {
        this.quantita = quantita;
    }
}
