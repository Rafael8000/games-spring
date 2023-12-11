package application.model;

import java.util.HashSet;
import java.util.Set;

import javax.annotation.processing.Generated;

import jakarta.persistance.Column;
import jakarta.persistance.Entity;
import jakarta.persistance.GeneratedValue;
import jakarta.persistance.GenerationType;
import jakarta.persistance.Id;
import jakarta.persistance.ManytoMany;
import jakarta.persistance.ManytoOne;
import jakarta.persistance.Table;
import jakarta.persistance.JoinTable;
import jakarta.persistance.JoinColumn;

@Entity
@Table(name = "jogo")
public class Jogo {
@Id
@GeneratedValue (strategy = GenerationType.IDENTITY)
private long id;
@Column(nullable = true)
private String titulo;

@ManytoOne
@JoinColumn(nome = "id_genero")
private Categoria categoria;

@ManytoMany
@JoinTable(
    name = "jogos_possuem_plataformas",
    joinColumns = @JoinColumn(name = "id_jogos"),
    inverseJoinColumns = @JoinColumn(name = "id_plataformas"))
    private Set <Plataforma> plataformas = new HashSet<>();
    
    public long getId(){
        return id;
    }
    public void setId(long id) {
        this.id = id;
    }
    public String getTitulo() {
        return  titulo;
    }
    public void setTitulo (String titulo){
        this.titulo = titulo;
    }
    public Categoria getCategoria() {
        return categoria;
    }
    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }
    public Set<Plataforma> getPlataformas() {
        return plataformas;
    }
    public void setPlataformas(Set<Plataforma> plataformas){
        this.plataformas = plataformas;
    }
}