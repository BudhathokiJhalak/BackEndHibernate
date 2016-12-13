/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.sampleweb.dao;

import com.leapfrog.sampleweb.entity.Setting;

/**
 *
 * @author zak
 */
public interface SettingDAO {

    Setting getByKey(String param);

}
