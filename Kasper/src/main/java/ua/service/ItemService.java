package ua.service;

import java.util.List;

import ua.dto.form.ItemForm;
import ua.entity.Item;

public interface ItemService {
	
	
	
	ItemForm findForm(int id);
	
	List<Item> findAll();
	
	void save(ItemForm itemForn);
	//void save (Item item);
	
	void delete(int id);

}
