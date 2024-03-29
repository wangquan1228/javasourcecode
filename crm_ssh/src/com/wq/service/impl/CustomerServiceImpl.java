package com.wq.service.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.wq.bean.Customer;
import com.wq.dao.CustomerDao;
import com.wq.service.CustomerService;
import com.wq.util.PageBean;

public class CustomerServiceImpl implements CustomerService {

    private CustomerDao customerDao;

    public void setCustomerDao(CustomerDao customerDao) {
        this.customerDao = customerDao;
    }
    
    /*
     *添加用户 
     */
    @Override
    public void saveCust(Customer customer) {
        //1、维护Customer与数据字典对象的关系，由于struts2参数封装，会将参数封装到数据字典的id属性
        //那么我们无需手动维护关系
        //2、调用Dao保存客户
        customerDao.save(customer);
    }
    
    /*
     * 删除用户
     */
    public void  deleteCust(Serializable  id) {
        customerDao.delete(id);
    }
    
    /*
     *根据id查询对象
     */
    @Override
    public Customer getById(Serializable id) {
         return customerDao.getById(id);
    }
    
    /*
     * 修改用户信息
     */
    @Override
    public void updateCust(Customer customer) {
        customerDao.update(customer);
        
    }
    
    
    
    
    @Override
    public PageBean getPageBean(DetachedCriteria dc, Integer currentPage, Integer pageSize) {
        // 1 调用Dao的查询总记录数
        Integer totalCount = customerDao.getByTotalCount(dc);
        // 2 创建PageBean
        PageBean pb = new PageBean(currentPage, totalCount, pageSize);
        // 3 调用 Dao的查询分页列表数据

        List<Customer> list = customerDao.getPageList(dc, pb.getStart(), pb.getPageSize());
        // 4 列表数据放入pageBean中,并返回
        pb.setList(list);
        return pb;
    }

    @Override
    public List<Object[]> getIndustryCount() {
        return customerDao.getIndustryCount();
        
    }

    @Override
    public List<Object[]> getSourceCount() {
        return customerDao.getIndustryCount();
    }

}
