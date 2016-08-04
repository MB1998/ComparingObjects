public class UniversalComparator { 
	public static Integer Compare(Object firstItem, Object secondItem){
        
        if(firstItem instanceof List<Object> && secondItem instanceof List<Object>){
            if(((List<Object>)firstItem).size() > ((List<Object>)secondItem).size()){
                return 1;
            } else if (((List<Object>)firstItem).size() == ((List<Object>)secondItem).size()){
		return 0;
            } else {
                return -1;
            }
            
        } else try{
			Decimal decimal_value_of_first_item = Decimal.ValueOf(String.valueOf(firstItem));
			Decimal decimal_value_of_second_item = Decimal.Valueof(String.valueOf(secondItem));
			if(decimal_value_of_first_item > decimal_value_of_second_item){
				return 1;
			} else if (decimal_value_of_first_item == decimal_value_of_second_item){
				return 0;
			} else{
				return -1;
			}
		} catch(Exception e) {
            
		}
        return 0;
	}
}
