package Ex;

import java.util.ArrayList;

public class Service {

	DAO dao = new DAO();

	public ArrayList<String> getGoodsAllList() {

		ArrayList<String> list = dao.GoodsAll();

		return list;
	}

	public Goods getGoodsCheck(String id) {

		Goods g = dao.goodsCheck(id);
		return g;
	}

	public void getNewPrice(Goods g) {
		dao.ChangePrice(g);

	}

	public void delete(Goods g) {
		dao.delete(g);

	}

	public void getregi(Goods g) {
		dao.regist(g);
	}
}
