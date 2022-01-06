package com.juegosofka.model;

import com.sun.xml.internal.bind.v2.runtime.Name;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "categoria")

public class Categoria {

    @Id
    @Column(name="idCategoria")
    private int idCategoria;

    @Column(name="Nombre")
    private String nombre ;

    @Column(name = "ValorPremio")
    private int valorPremio ;

    @Column(name = "Nivel")
    private int nivel ;

    @OneToMany(mappedBy = "categoria",cascade = CascadeType.ALL)
    private List<Pregunta> preguntas= new ArrayList<>();


    public Categoria() {
    }

    public Categoria(int idCategoria, String nombre, int valorPremio, int nivel) {

        this.idCategoria = idCategoria;
        this.nombre = nombre;
        this.valorPremio = valorPremio;
        this.nivel = nivel;
    }

    public int getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getValorPremio() {
        return valorPremio;
    }

    public void setValorPremio(int valorPremio) {
        this.valorPremio = valorPremio;
    }

    public int getNivel() {
        return nivel;
    }

    public void setNivel(int nivel) {
        this.nivel = nivel;
    }

    public List<Pregunta> getPreguntas() {
        return preguntas;
    }

    public void setPreguntas(List<Pregunta> preguntas) {
        this.preguntas = preguntas;
    }
}
