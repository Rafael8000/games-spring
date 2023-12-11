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
import jakarta.persistance.ManytoMany;
import jakarta.persistance.Table;

@Entity
@Table(name = "platafomas")
public class Plataforma {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private long id;
@Column(unique = true, nullable = false)
private string nome;

@ManytoMany(mappedBy= "plataformas")
private Set<Jogo> jogos = new HashSet<>();

public long getId(){
    return id;
}
    public void setId(long id) {
        this.id = id;
    }
    public string getNome() {
        return nome;
        }
        public void setNome(string nome){
            this.nome = nome;   
        }
        public set<Jogo> getJogos(){
            return jogos;
        }
        public void setJogos(Set<Jogo> jogos){
                this.jogos = jogos;
        }
}