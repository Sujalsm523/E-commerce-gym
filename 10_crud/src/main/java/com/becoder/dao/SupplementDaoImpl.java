package com.becoder.dao;

import com.becoder.entity.Supplement;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class SupplementDaoImpl implements SupplementDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Override
    public List<Supplement> getAllSupplements() {
        return hibernateTemplate.loadAll(Supplement.class);
    }

    @Override
    public Supplement getSupplementById(int id) {
        return hibernateTemplate.get(Supplement.class, id);
    }

    @Override
    public void saveOrUpdateSupplement(Supplement supplement) {
        hibernateTemplate.saveOrUpdate(supplement);
    }

    @Override
    public void deleteSupplement(int id) {
        Supplement supplement = hibernateTemplate.get(Supplement.class, id);
        if (supplement != null) {
            hibernateTemplate.delete(supplement);
        }
    }
}
