# MFPD-NoWrithe!

# The NoWrithe! resource ensures that NPCs within a specified distance from the player will not perform the writhing animation when injured, which is the cause for their short time during fights. 

# The script runs upon player entering in the server  and  checks all nearby NPCs, modifying their behavior if they meet certain conditions.

# RESMON: 0.00ms-0.01ms (Idle and while using). 

# **Functionality**:

  >  #  Initialization: A table, handledPeds, is used to keep track of NPCs that have already been processed by the script.
> 
>    # Main Loop: A thread that runs very light on resources to check around and update NPCs table.
> 
>   #  Distance Check: The resource calculates the distance between the player and each NPC. If an NPC is within 100 units of the player and meets the specified criteria, it updates the NPC's behavior. 
>  # Radius can be changed ` if distance <= 100.0` but I haven't tested any perfomance above "100", so I can not guarantee you anything.
> 
>    # Behavior Modification: The resource sets configuration flags to prevent the writhing animation and ensure the NPC behaves as desired and withstand longer. *NPC HEALTH WASN'T MODIFIED.


|-------------------------------------|----------------------------|

| Code is accessible       | Yes  |
| Subscription-based      | No  |
| Lines (approximately)  | 24 |
| Requirements                | N/A |
| Support                           | Yes |

|-------------------------------------|----------------------------|

