package com.entity.view;

import com.entity.CailiaoEntity;
import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
import java.util.Date;

/**
 * 材料信息
 * 后端返回视图实体辅助类
 * （通常后端关联的表或者自定义的字段需要返回使用）
 */
@TableName("cailiao")
public class CailiaoView extends CailiaoEntity implements Serializable {
    private static final long serialVersionUID = 1L;

		/**
		* 材料类型的值
		*/
		private String cailiaoValue;



	public CailiaoView() {

	}

	public CailiaoView(CailiaoEntity cailiaoEntity) {
		try {
			BeanUtils.copyProperties(this, cailiaoEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}



			/**
			* 获取： 材料类型的值
			*/
			public String getCailiaoValue() {
				return cailiaoValue;
			}
			/**
			* 设置： 材料类型的值
			*/
			public void setCailiaoValue(String cailiaoValue) {
				this.cailiaoValue = cailiaoValue;
			}















}
