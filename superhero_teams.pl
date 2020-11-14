#!/usr/bin/perl
# Perl Assignment - Hash of Hashes
# Melissa Tan

# Teams using a Hash of Hashes

# Superhero Team Year Owner Leader

# Justice Society  1940 DC     Hawkman
# Justice League   1960 DC     Superman
# Fantastic Four   1961 Marvel Mr. Fantastic
# Avengers         1963 Marvel Captain America
# X-Men            1963 Marvel Professor X

# I have created the following array:

@teams = ("Justice Society", "Justice League", "Fantastic Four", "Avengers" , "X-Men");

# and the following Hash of Hashes:

%myTeams = ( "Justice Society" => { yearBorn => 1940,
                                    owner => "DC",
                                    leader => "Hawkman",
                                  },
              "Justice League" => { yearBorn => 1960,
                                    owner => "DC",
                                    leader => "Superman"
                                  },
              "Fantastic Four" => { yearBorn => 1961,
                                    owner => "Marvel",
                                    leader => "Mr. Fantastic"
                                  },
                    "Avengers" => { yearBorn => 1963,
                                    owner => "Marvel",
                                    leader => "Captain America",
                                  },
                       "X-Men" => { yearBorn => 1963,
                                    owner => "Marvel",
                                    leader => "Professor X"
                                  },

);

# To print out sorted Team information in the Hash of Hashes (ascending order):

print ("\n\nMy Team - sorted by Team Name ascending:\n\n");

printf("%-20s \t%-6s \t%-10s \t%-25s \n", "Team", "Year", "Owner", "Leader");

@sortedKeys = sort (@teams);

for $teamName (@sortedKeys) {
    $yearBorn = $myTeams{$teamName}{'yearBorn'};
    $owner = $myTeams{$teamName}{'owner'};
    $leader = $myTeams{$teamName}{'leader'};

    printf("%-20s \t%-6i \t%-10s \t%-25s \n", $teamName, $yearBorn, $owner, $leader);
    print "\n";
}

# To print out sorted Team information in the Hash of Hashes (descending order):

print ("\n\My Team - sorted by Team Name decending:\n\n");

printf("%-20s \t%-6s \t%-10s \t%-25s \n", "Team", "Year", "Owner", "Leader");

@reverseKeys = reverse (@sortedKeys);

for $teamName (@reverseKeys) {
    $yearBorn = $myTeams{$teamName}{'yearBorn'};
    $owner = $myTeams{$teamName}{'owner'};
    $leader = $myTeams{$teamName}{'leader'};
    
    printf("%-20s \t%-6i \t%-10s \t%-25s \n", $teamName, $yearBorn, $owner, $leader);
    print "\n";
}

print "\n\nHTML Page containing information on my Team:\n\n";

print "<html>\n";
print "<head>\n";
print "<title>My Team</title>";
print "</head>\n";
print "<body>\n";
print "<H1>SuperHero Teams</H1>\n";
print "<table border=1>\n";
print "<tr><th>Team</th><th>Year</th><th>Owner</th><th>Leader</th></tr>\n";

for $teamName (sort keys %myTeams ) {
    $yearBorn = $myTeams{$teamName}{'yearBorn'};
    $owner = $myTeams{$teamName}{'owner'};
    $leader = $myTeams{$teamName}{'leader'};

    print "<tr><td>$teamName</td><td>$yearBorn</td><td>$owner</td><td>$leader</td></tr>\n";
}
print "</table>\n";
print "</body>\n";
print "</html>\n";