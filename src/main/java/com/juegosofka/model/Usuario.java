package com.juegosofka.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "usuario")
public class Usuario {

    @Id
    @Column(name="idUsuario")
    private int idUsuario;

    @Column(name="Nombre")
    private String nombre ;

    @Column(name = "premioTotal")
    private int premioTotal ;

    public Usuario() {
    }

    public Usuario(int idUsuario, String nombre, int premioTotal) {
        this.idUsuario = idUsuario;
        this.nombre = nombre;
        this.premioTotal = premioTotal;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getPremioTotal() {
        return premioTotal;
    }

    public void setPremioTotal(int premioTotal) {
        this.premioTotal = premioTotal;
    }
}
