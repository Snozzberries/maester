Describe "CISA SCuBA" -Tag "MS.EXO", "MS.EXO.8.4", "CISA", "Security", "All" {
    It "MS.EXO.08.4: At a minimum, the DLP solution SHALL restrict sharing credit card numbers, U.S. Individual Taxpayer Identification Numbers (ITIN), and U.S. Social Security numbers (SSN) via email." {

        $cisa = Test-MtCisaDlpBaselineRule

        if ($null -ne $cisa) {
            $cisa | Should -Be $true -Because "baseline DLP rules are in use."
        }
    }
}