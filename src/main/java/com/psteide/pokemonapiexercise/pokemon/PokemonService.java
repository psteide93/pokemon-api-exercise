package com.psteide.pokemonapiexercise.pokemon;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PokemonService {
    @Autowired
    private PokemonRepository pokemonRepository;

    public Iterable<Pokemon> list() {
        return pokemonRepository.findAll();
    }

    public Optional<Pokemon> findById(Long id) {
        return pokemonRepository.findById(id);
    }

    public Pokemon create(Pokemon pokemon) {
        return pokemonRepository.save(pokemon);
    }

    public Optional<Pokemon> update(Pokemon pokemon) {
        Optional<Pokemon> foundResource = pokemonRepository.findById(pokemon.getId());

        if (foundResource.isPresent()) {
            Pokemon updatedResource = foundResource.get();
            updatedResource.setName(pokemon.getName());
            updatedResource.setFrontDefault(pokemon.getFrontDefault());

            pokemonRepository.save(updatedResource);
            return Optional.of(updatedResource);
        } else {
            return Optional.empty();
        }
    }

    public void deleteById(Long id) {
        pokemonRepository.deleteById(id);
    }
}