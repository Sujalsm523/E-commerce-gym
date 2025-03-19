package com.becoder.dao;
import com.becoder.entity.Supplement;
import java.util.List;

public interface SupplementDao {
    List<Supplement> getAllSupplements();
    Supplement getSupplementById(int id);
    void saveOrUpdateSupplement(Supplement supplement);
    void deleteSupplement(int id);
}
