package br.com.fabricaon.dao;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import br.com.fabricaon.model.Book;

public class BookDAO {
	
	private final static Map<Long, Book> BOOKS = new HashMap<>();
	
	static {
		geraIdEAdiciona(new Book("Java", "Java is a programming language and computing platform first released by Sun Microsystems in 1995. "));
		geraIdEAdiciona(new Book("Fantasia", "Livro com espadas e magias, Cras eget elit ut diam sagittis faucibus. Ut ac ultricies urna, sed rutrum lacus."));
		geraIdEAdiciona(new Book("Romeu e Julieta", "Romance entre Julieta e Romeu. Fusce fermentum urna eu quam porttitor faucibus."));
		geraIdEAdiciona(new Book("PHP", "Linguagem de programação web"));
		geraIdEAdiciona(new Book("Esporte", "Livro sobre esporte"));
		geraIdEAdiciona(new Book("Culinária", "Aprenda a fritar ovos como ninguém"));
		geraIdEAdiciona(new Book("The Lord of the Rings", "The story began as a sequel to Tolkien's 1937 fantasy novel The Hobbit."));
	}
	
	public void adiciona(Book livro) {
		geraIdEAdiciona(livro);
	}
	
	private static void geraIdEAdiciona(Book livro) {
		long id = BOOKS.size()+1l;
		livro.setId(id);
		BOOKS.put(id, livro);
	}

	public Collection<Book> findAll() {
		List<Book> lista = new ArrayList<>();
		for (Book livro : BOOKS.values()) {
			lista.add(livro);
		}
		return lista;
	}
	
	public Collection<Book> searchByTitle(String title) {
		if(title == null)
			return BOOKS.values();
		
		List<Book> similar = new ArrayList<>();
		for(Book book : BOOKS.values()) {
			if (book.getName().toLowerCase().contains(title.toLowerCase()))
				similar.add(book);
		}
		
		return similar;
	}

	public Book searchById(long id) {		
		return BOOKS.get(id);
	}
	
	public Collection<Book> orderByVisit(){
		List<Book> list = new ArrayList<>();
		for(Book book: BOOKS.values()) {
			list.add(book);
		}		
		Collections.sort(list);
		return list;
	}
}
