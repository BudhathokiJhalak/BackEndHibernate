/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.sampleweb.dao.impl;

import com.leapfrog.sampleweb.dao.SettingDAO;
import com.leapfrog.sampleweb.entity.Setting;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author zak
 */
@Repository(value = "settingDAO")
public class SettingDAOImpl implements SettingDAO {

    @Autowired
    private SessionFactory sessionFactory;
    private Session session;
    private Transaction trans;

    @Override
    public Setting getByKey(String param) {
        Setting s = null;
        session = sessionFactory.openSession();
        trans = session.beginTransaction();
        s = (Setting) session.get(Setting.class, param);
        trans.commit();
        session.close();
        return s;
    }

}
