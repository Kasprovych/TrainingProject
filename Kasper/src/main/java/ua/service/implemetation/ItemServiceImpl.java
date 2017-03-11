package ua.service.implemetation;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ua.dto.form.ItemForm;
import ua.entity.Item;
import ua.repository.itemRepository;
import ua.service.ItemService;

@Service
public class ItemServiceImpl implements ItemService {

	@Autowired
	itemRepository repository;

	@Override
	@Transactional(readOnly = true)
	public Item findOne(int id) {
		return repository.findOne(id);
	}

	/*@Override
	@Transactional(readOnly = true)
	public ItemForm findForm(int id) {
		Item item = new Item();
		ItemForm itemForm = new ItemForm();
		itemForm.setId(item.getId());
		itemForm.setBrand(item.getBrand());
		itemForm.setKind(item.getKind());
		itemForm.setPower(item.getPower());
		itemForm.setSize(item.getSize());
		itemForm.setName(item.getName());
		itemForm.setPrice(String.valueOf(item.getPrice()));
		return itemForm;
	}*/

	@Override
	@Transactional(readOnly = true)
	public List<Item> findAll() {
		return repository.findAll();
	}

	@Override
	public void delete(int id) {
		repository.delete(id);
	}

	@Override
	public void save(Item item) {
		/*Item item = new Item();
		item.setId(itemForm.getId());
		item.setName(itemForm.getName());
		item.setPrice(new BigDecimal(itemForm.getPrice().replace(',', '.')));*/
		repository.save(item);
	}


	/*@Override
	public void save(ItemForm itemForm) {
		Item item = new Item();
		item.setId(itemForm.getId());
		item.setName(itemForm.getName());
		item.setPrice(new BigDecimal(itemForm.getPrice().replace(",", ".")));
		repository.save(item);

	

	}*/

}
