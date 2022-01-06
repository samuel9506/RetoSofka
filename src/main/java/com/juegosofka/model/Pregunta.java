package com.juegosofka.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "preguntas")

public class Pregunta {
    @Id
    @Column(name="idPreguntas")
    private int idPregunta;

    @Column(name="Descripcion")
    private String descripcion ;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idCategoria",insertable = false,updatable = false)
    private Categoria categoria;

    @OneToMany(mappedBy = "pregunta",cascade = CascadeType.ALL)
    private List<Respuesta> respuestas= new ArrayList<>();

    public Pregunta() {
    }

    public Pregunta(String descripcion,Categoria categoria,int idPregunta) {

        this.idPregunta = idPregunta;
        this.descripcion = descripcion;
        this.categoria = categoria;
    }

    public int getIdPregunta() {
        return idPregunta;
    }

    public void setIdPregunta(int idPregunta) {
        this.idPregunta = idPregunta;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public List<Respuesta> getRespuestas() {
        return respuestas;
    }

    public void setRespuestas(List<Respuesta> respuestas) {
        this.respuestas = respuestas;
    }
}
