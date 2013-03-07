package net.skytrail.util

class USStates
{
    def states = ["ALABAMA" : "AL", "ALASKA" : "AK", "AMERICAN SAMOA" : "AS", "ARIZONA" : "AZ", "ARKANSAS" : "AR", "CALIFORNIA" : "CA", "COLORADO" : "CO", "CONNECTICUT" : "CT", "DELAWARE" : "DE",
        "DISTRICT OF COLUMBIA" : "DC", "FEDERATED STATES OF MICRONESIA" : "FM", "FLORIDA" : "FL", "GEORGIA" : "GA", "GUAM GU" : "GU", "HAWAII" : "HI", "IDAHO" : "ID", "ILLINOIS" : "IL", "INDIANA" : "IN",
        "IOWA" : "IA", "KANSAS" : "KS", "KENTUCKY" : "KY", "LOUISIANA" : "LA", "MAINE" : "ME", "MARSHALL ISLANDS" : "MH", "MARYLAND" : "MD", "MASSACHUSETTS" : "MA", "MICHIGAN" : "MI", "MINNESOTA" : "MN",
        "MISSISSIPPI" : "MS", "MISSOURI" : "MO", "MONTANA" : "MT", "NEBRASKA" : "NE", "NEVADA" : "NV", "NEW HAMPSHIRE" : "NH", "NEW JERSEY" : "NJ", "NEW MEXICO" : "NM", "NEW YORK" : "NY", "NORTH CAROLINA" : "NC",
        "NORTH DAKOTA" : "ND", "NORTHERN MARIANA ISLANDS" : "MP", "OHIO" : "OH", "OKLAHOMA" : "OK", "OREGON" : "OR", "PALAU" : "PW", "PENNSYLVANIA" : "PA", "PUERTO RICO" : "PR", "RHODE ISLAND" : "RI",
        "SOUTH CAROLINA" : "SC", "SOUTH DAKOTA" : "SD", "TENNESSEE" : "TN", "TEXAS" : "TX", "UTAH" : "UT", "VERMONT" : "VT", "VIRGIN ISLANDS" : "VI", "VIRGINIA" : "VA", "WASHINGTON" : "WA",
        "WEST VIRGINIA" : "WV", "WISCONSIN" : "WI", "WYOMING" : "WY",
        "AL" : "ALABAMA" , "AK" : "ALASKA" , "AS" : "AMERICAN SAMOA" , "AZ" : "ARIZONA" , "AR" : "ARKANSAS" , "CA" : "CALIFORNIA" , "CO" : "COLORADO" , "CT" : "CONNECTICUT" , "DE" : "DELAWARE" ,
        "DC" : "DISTRICT OF COLUMBIA" , "FM" : "FEDERATED STATES OF MICRONESIA" , "FL" : "FLORIDA" , "GA" : "GEORGIA" , "GU" : "GUAM GU" , "HI" : "HAWAII" , "ID" : "IDAHO" , "IL" : "ILLINOIS" , "IN" : "INDIANA" ,
        "IA" : "IOWA" , "KS" : "KANSAS" , "KY" : "KENTUCKY" , "LA" : "LOUISIANA" , "ME" : "MAINE" , "MH" : "MARSHALL ISLANDS" , "MD" : "MARYLAND" , "MA" : "MASSACHUSETTS" , "MI" : "MICHIGAN" ,
        "MN" : "MINNESOTA" , "MS" : "MISSISSIPPI" , "MO" : "MISSOURI" , "MT" : "MONTANA" , "NE" : "NEBRASKA" , "NV" : "NEVADA" , "NH" : "NEW HAMPSHIRE" , "NJ" : "NEW JERSEY" , "NM" : "NEW MEXICO" ,
        "NY" : "NEW YORK" , "NC" : "NORTH CAROLINA" , "ND" : "NORTH DAKOTA" , "MP" : "NORTHERN MARIANA ISLANDS" , "OH" : "OHIO" , "OK" : "OKLAHOMA" , "OR" : "OREGON" , "PW" : "PALAU" , "PA" : "PENNSYLVANIA" ,
        "PR" : "PUERTO RICO" , "RI" : "RHODE ISLAND" , "SC" : "SOUTH CAROLINA" , "SD" : "SOUTH DAKOTA" , "TN" : "TENNESSEE" , "TX" : "TEXAS" , "UT" : "UTAH" , "VT" : "VERMONT" , "VI" : "VIRGIN ISLANDS" ,
        "VA" : "VIRGINIA" , "WA" : "WASHINGTON" , "WV" : "WEST VIRGINIA" , "WI" : "WISCONSIN" , "WY" : "WYOMING"]
    
    def getAlternates(String aState)
    {
        //println "Looking for "+aState
        if (states[aState.toUpperCase()] != null)
            return states[aState.toUpperCase()]
        return "no alternate found"
    }
}
