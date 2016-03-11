/**
 * Over-target markers. All settings moved to separate files.
 */
{
  "markers": {
    // true - use standard client vehicle markers.
    "useStandardMarkers": true,
    // {{turret}} marker display strings.
    "turretMarkers": {
      // Subject has stock turret and top gun can not be mounted. Subject is highly vulnerable.
      "highVulnerability": "\u0049",
      // Subject has stock turret and top gun can be mounted. Subject is somewhat vulnerable.
      "lowVulnerability": "\u0048"
    },     
    "ally": {
      "alive": {
        "normal": ${"markersAliveNormal.xc":"ally"},
        "extended": ${"markersAliveExtended.xc":"ally"}
      },
      "dead": {
        "normal": ${"markersDeadNormal.xc":"ally"},
        "extended": ${"markersDeadExtended.xc":"ally"}
      }
    },
    "enemy": {
      "alive": {
        "normal": ${"markersAliveNormal.xc":"enemy"},
        "extended": ${"markersAliveExtended.xc":"enemy"}
      },
      "dead": {
        "normal": ${"markersDeadNormal.xc":"enemy"},
        "extended": ${"markersDeadExtended.xc":"enemy"}
      }
    }
  }
}
