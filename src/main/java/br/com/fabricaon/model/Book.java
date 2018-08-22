package br.com.fabricaon.model;

public class Book implements Comparable<Book> {
	private Long id = 0l;
	private String name;
	private String description;
	private long visitas=0;
	
	public Book(String name, String descricao) {		
		this.name = name;
		this.description = descricao;
	}
	
	public String getName() {
		return name;
	}
	public String getDescription() {
		return description;
	}
	public void setId(long id) {
		this.id = id;		
	}

	public Long getId() {
		return id;
	}	
	
	public void newVisit() {
		visitas+=1;
	}
	
	public long getNumbersVisit() {
		return visitas;
	}

	@Override
	public int compareTo(Book o) {
		return Long.compare(o.getNumbersVisit(), this.getNumbersVisit());
	}
}
