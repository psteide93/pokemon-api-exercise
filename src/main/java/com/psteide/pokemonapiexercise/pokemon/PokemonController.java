package com.psteide.pokemonapiexercise.pokemon;

import java.util.Map;
import java.util.HashMap;

import com.psteide.pokemonapiexercise.exception.ResourceNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
@RestController
@RequestMapping("api/pokemon")
public class PokemonController {
    @Autowired
    private PokemonService pokemonService;

    @GetMapping
    @ResponseStatus(HttpStatus.OK)
    public Map<String, Iterable<Pokemon>> list() {
        Iterable<Pokemon> pokemon = pokemonService.list();
        return createHashPlural(pokemon);
    }

    @GetMapping("/{id}")
    @ResponseStatus(HttpStatus.OK)
    public Map<String, Pokemon> read(@PathVariable Long id) {
        Pokemon pokemon = pokemonService
                .findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("No Pokemon with that ID"));
        return createHashSingular(pokemon);
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public Map<String, Pokemon> create(@Validated @RequestBody Pokemon pokemon) {
        Pokemon createdPokemon = pokemonService.create(pokemon);
        return createHashSingular(createdPokemon);
    }

    @PutMapping("/{id}")
    @ResponseStatus(HttpStatus.CREATED)
    public Map<String, Pokemon> update(@RequestBody Pokemon someResource, @PathVariable Long id) {
        Pokemon updatedPokemon = pokemonService
                .update(someResource)
                .orElseThrow(() -> new ResourceNotFoundException("No Pokemon with that ID"));

        return createHashSingular(updatedPokemon);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable Long id) {
        pokemonService.deleteById(id);
    }

    private Map<String, Pokemon> createHashSingular(Pokemon pokemon) {
        Map<String, Pokemon> response = new HashMap<String, Pokemon>();
        response.put("someResource", pokemon);

        return response;
    }

    private Map<String, Iterable<Pokemon>> createHashPlural(Iterable<Pokemon> multiplePokemon) {
        Map<String, Iterable<Pokemon>> response = new HashMap<String, Iterable<Pokemon>>();
        response.put("results", multiplePokemon);

        return response;
    }
}