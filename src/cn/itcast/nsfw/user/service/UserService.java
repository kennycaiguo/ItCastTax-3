package cn.itcast.nsfw.user.service;

import java.io.File;
import java.io.Serializable;
import java.util.List;

import javax.servlet.ServletOutputStream;

import cn.itcast.core.exception.ServiceException;
import cn.itcast.nsfw.user.entity.User;
import cn.itcast.nsfw.user.entity.UserRole;

public interface UserService {
	public void save(User entity);
	
	public void update(User entity);
		
	public void delete(Serializable id);
	
	public void deleteAll(Serializable[] ids);
	
	public List<User> findObjects() throws ServiceException;
		
	public User findObectsById(Serializable id);

	/**
	 *Title:exportExcel
	 *Description:导出用户列表
	 *@param userList
	 *@param outputStream
	 *Throws
	 */
	public void exportExcel(List<User> userList,
			ServletOutputStream outputStream);

	public void importExcel(File userExcel);
	
	/**
	 *Title:findUsersByAccountAndId
	 *Description:根据账号或id查询账号
	 *@param account
	 *@return
	 *Throws
	 */
	public List<User> findUsersByAccountAndId(String account,String id);

	/**
	 *Title:saveUserAndRole
	 *Description:保存用户及其角色
	 *@param user
	 *@param roleIds
	 *Throws
	 */ 
	public void saveUserAndRole(User user, String... roleIds);

	/**
	 *Title:updateUserAndRole
	 *Description:更新用户及其角色
	 *@param user
	 *@param roleIds
	 *Throws
	 */
	public void updateUserAndRole(User user, String... roleIds);

	/**
	 *Title:findUserRolesByUserId
	 *Description:根据用户id查询该用户对应的所有用户角色
	 *@param id
	 *@return
	 *Throws
	 */
	public List<UserRole> findUserRolesByUserId(String id);
	/**
	 *Title:findUsersByAccountAndPass
	 *Description:根据用户账号和密码查询用户记录
	 *@param account
	 *@param password
	 *@return
	 *Throws
	 */
	public List<User> findUsersByAccountAndPass(String account, String password);
	

}
