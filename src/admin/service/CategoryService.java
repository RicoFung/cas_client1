package admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.dao.CategoryDao;
import admin.entity.Category;
import chok.devwork.BaseDao;
import chok.devwork.BaseService;

@Service("paperCategoryService")
public class CategoryService extends BaseService<Category,Long>
{
	@Autowired
	private CategoryDao paperCategoryDao;

	@Override
	public BaseDao<Category,Long> getEntityDao() {
		return paperCategoryDao;
	}
}
