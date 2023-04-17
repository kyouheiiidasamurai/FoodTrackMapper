package Utility;

public class CommonUtility {

	public int checkInt(String str) {
		int no = 0;
		String value = str;
		if (value != null) {
			try {
				no = Integer.parseInt(value);
			} catch (NumberFormatException e) {
				// 例外処理
			}
		}
		return no;
	}
}
