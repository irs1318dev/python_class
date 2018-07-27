class Scale():
    """Models the scale or one of the switches.

    __init__ defines the initial values of the variables
    getCurrentOwner determines which alliance has possession of the scale/switch
    addRedCube adds a cube to the red alliance side
    addBlueCube adds a cube to the blue alliance side

    """

    def __init__(self):
        self.red = 0
        self.blue = 0
        self.ownerAtLastScoreCheck = "balanced"

    def getCurrentOwner(self):
        if self.red > self.blue:
            return "red"
        elif self.red < self.blue:
            return "blue"
        return "balanced"

    def addRedCube(self):
        self.red = self.red + 1
        return self.red

    def addBlueCube(self):
        self.blue = self.blue + 1
        return self.blue

    def __str__(self):
        print("red = " + str(self.red))
        print("blue = " + str(self.blue))
        print("owner = " + self.getCurrentOwner())

    def getRedPoints(self, seconds, isAutoMode):  # auto mode is true/false
        if self.getCurrentOwner() != "red":
            return 0
        points = seconds
        if self.ownerAtLastScoreCheck != "red":
            points = points + 1
            self.ownerAtLastScoreCheck = "red"
        if isAutoMode:
            points = 2 * points
        return points

    def getBluePoints(self, seconds, isAutoMode):
        """Calculates the number of points the blue team earns based on past and current possession
        """
        if self.getCurrentOwner() != "blue":
            return 0
        points = seconds
        if self.ownerAtLastScoreCheck != "blue":
            points = points + 1
            self.ownerAtLastScoreCheck = "blue"
        if isAutoMode:
            points = 2 * points
        return points


class RedSwitch(Scale):
    """Calculates the number of ponts the red team earns/does not earn based on the possession of the red switch
    """

    def getBluePoints(self, seconds, isAutoMode):
        return 0


class BlueSwitch(Scale):
    """Calculates the number of ponts the blue team earns/does not earn based on the possession of the blue switch
    """

    def getRedPoints(self, seconds, isAutoMode):
        return 0


def testScale():
    print(BlueSwitch.__doc__)
    myScale = Scale()
    print(myScale.getCurrentOwner())
    print(myScale.addRedCube())
    print(myScale.getRedPoints(8, True))
    print(myScale.getCurrentOwner())
    print(myScale.addBlueCube())
    print(myScale.addBlueCube())
    print(myScale.getCurrentOwner())
    myBlueSwitch = Scale()
    myRedSwitch = Scale()
    myScale.__str__()


testScale()