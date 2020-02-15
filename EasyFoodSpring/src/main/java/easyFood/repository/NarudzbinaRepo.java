package easyFood.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import model.Narudzbina;

public interface NarudzbinaRepo extends JpaRepository<Narudzbina, Integer> {

	
	
	@Query ("SELECT n FROM Narudzbina n WHERE n.datum=:date AND n NOT IN (SELECT d.narudzbina FROM Dostava d)")
	List<Narudzbina> bezDostavljaca(@Param("date") Date date);
}
