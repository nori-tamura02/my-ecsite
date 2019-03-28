package ItemListDeleteConfirmAction;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.ItemListDAO;
import com.internousdev.ecsite.dto.ItemListDTO;
import com.opensymphony.xwork2.ActionSupport;

public class itemListDeleteConfirmAction extends ActionSupport implements SessionAware {

	public Map<String,Object>session;
	private MyPageDAO itemListDAO=new itemListDAO();
	private ArrayList<itemListDTO>myPageList=new ArrayList<itemListDTO>();
	private String deleteFlg;
	private String message;

	public void delete()throws SQLException {
		int res = itemListDAO.itemListHistoryDelete();

		if(res > 0){
			itemList=null;
			result = "SUCCESS";
		}else if( res == 0){
			result = "ERROR";
		}
		return result;
	}

}
