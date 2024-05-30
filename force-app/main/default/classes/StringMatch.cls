// It wasn't clear to me if the exercise was to evaluate the individual characters in the Strings for equality
// or to simply evaluate the lengths of the two String values. Instead of asking that question and waiting
// for the response, I elected to do what I think is the more difficult of the two exercises.

public with sharing class StringMatch {

    public static Boolean GetIsString85PercentMatch(String valueToCompare, String valueToCompareWith) {

        String comparable1 = GetComparableString(valueToCompare);
        String comparable2 = GetComparableString(valueToCompareWith);
        
        // I made the assumption that the 85% is calculated off of the longer of the two Strings
        // The description could have been easily interpreted as 85% of the length of the String in "valueToCompare"
        Integer numberOfCharactersForPercentCalc = Math.max(comparable1.length(), comparable2.length());
        Integer numberOfCharactersThatMustBeEqual = (Integer)Math.ceil(numberOfCharactersForPercentCalc * .85);

        Integer equalCharacterCount = 0;

        // I made the assumption that in order to be a match, it must be the same character at the same point in the String
        for(Integer i = 0; i < comparable1.length() && i < comparable2.length(); i++) {

            if(comparable1.charAt(i) == comparable2.charAt(i))
                equalCharacterCount++;

            if(equalCharacterCount >= numberOfCharactersThatMustBeEqual)
                return true;
        }

        return false;

    }

    private static String GetComparableString(String original) {

        return original.deleteWhitespace().toUpperCase();
    }
}