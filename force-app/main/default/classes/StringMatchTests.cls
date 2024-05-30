
@isTest
private class StringMatchTests {

    @isTest
    static void IgnoresCase() {
        
        String compare = 'aBc d efg';
        String compareTo = 'abc d eFg';

        Boolean result = StringMatch.GetIsString85PercentMatch(compare, compareTo);

        Assert.isTrue(result);
    }

    @isTest
    static void Sub85PercentMatchReturnsFalse() {
        
        String compare = 'Is this a match?';
        String compareTo = 'iS  this a math?';

        Boolean result = StringMatch.GetIsString85PercentMatch(compare, compareTo);

        Assert.isFalse(result);
    }

    @isTest
    static void ShorterSub85PercentMatchReturnsFalse() {
        
        String compare = 'JohnPaul';
        String compareTo = 'johnpa  ';

        Boolean result = StringMatch.GetIsString85PercentMatch(compare, compareTo);

        Assert.isFalse(result);
    }

    @isTest
    static void AnotherSub85PercentMatchReturnsFalse() {
        
        String compare = 'plkojhigfuds';
        String compareTo = 'plkojhigfu ';

        Boolean result = StringMatch.GetIsString85PercentMatch(compare, compareTo);

        Assert.isFalse(result);
    }

    @isTest
    static void AnotherLessThan100Over85PercentMatchReturnsTrue() {
        
        String compare = 'VirgilConor';
        String compareTo = 'VirgilCono';

        Boolean result = StringMatch.GetIsString85PercentMatch(compare, compareTo);

        Assert.isTrue(result);
    }
}