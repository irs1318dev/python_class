import sys

def calc_num_matches(num_teams, matches_per_team):
    """Determines the number of qual matches needed in an FRC competition.
    
    Args:
        num_teams: An integer representing the number of teams at an
            FRC competition.
        matches_per_team: The number of qualificaiton matches that each
            individual team will play at a the compeition.
            
    Returns:
        The number of qualification matches needed. If the return value
        is an integer, no surrogates will be needed.
    """
    # How many matches needed if only one team in every match?
    team_matches = num_teams * matches_per_team
    
    # But there are six teams in every match!
    return team_matches / 6

if __name__ == "__main__":
    print(calc_num_matches(int(sys.argv[1]), int(sys.argv[2])))
