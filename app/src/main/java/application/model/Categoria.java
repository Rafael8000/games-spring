package application.model;

import java.lang.annotation.Inherited;
import java.util.HashSet;
import java.util.Set;

import javax.annotation.processing.Generated;

import jakarta.persistance.Column;
import jakarta.persistance.Entity;
import jakarta.persistance.GeneratedValue;
import jakarta.persistance.GenerationType;
import jakarta.persistance.Id;
import jakarta.persistance.OneToMany;
import jakarta.persistance.Table;


@Entity
@Table(name = "categorias")
public class Categoria {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private long Id;
@Column(unique = true, nullable = false)
private string nome;

@OneToMany(mappedBy = "categoria")
private Set<Jogo> jogos = new HashSet<>();

public long getId() {
    return id;
}
public void setId(long id) {
    this.id = id;
}
public String getNome() {
    return nome;
}
public void setNome(String nome){
    this.nome = nome;
}
public Set<jogo> getJogos(){
    return jogos;
}
public void setJogos (set<Jogo> jogos){
    this.jogos = jogos;
}
}