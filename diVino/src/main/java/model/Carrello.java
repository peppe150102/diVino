package model;

import java.util.GregorianCalendar;

public class Carrello {
    private String id, codiceU;
    private float totale;
    private GregorianCalendar dataC;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCodiceU() {
        return codiceU;
    }

    public void setCodiceU(String codiceU) {
        this.codiceU = codiceU;
    }

    public float getTotale() {
        return totale;
    }

    public void setTotale(float totale) {
        this.totale = totale;
    }

    public GregorianCalendar getDataC() {
        return dataC;
    }

    public void setDataC(GregorianCalendar dataC) {
        this.dataC = dataC;
    }
}
