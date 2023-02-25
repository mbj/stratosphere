module Stratosphere.EC2.SpotFleet (
        module Exports, SpotFleet(..), mkSpotFleet
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.SpotFleet.SpotFleetRequestConfigDataProperty as Exports
import Stratosphere.ResourceProperties
data SpotFleet
  = SpotFleet {spotFleetRequestConfigData :: SpotFleetRequestConfigDataProperty}
mkSpotFleet :: SpotFleetRequestConfigDataProperty -> SpotFleet
mkSpotFleet spotFleetRequestConfigData
  = SpotFleet
      {spotFleetRequestConfigData = spotFleetRequestConfigData}
instance ToResourceProperties SpotFleet where
  toResourceProperties SpotFleet {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet",
         properties = ["SpotFleetRequestConfigData"
                         JSON..= spotFleetRequestConfigData]}
instance JSON.ToJSON SpotFleet where
  toJSON SpotFleet {..}
    = JSON.object
        ["SpotFleetRequestConfigData" JSON..= spotFleetRequestConfigData]
instance Property "SpotFleetRequestConfigData" SpotFleet where
  type PropertyType "SpotFleetRequestConfigData" SpotFleet = SpotFleetRequestConfigDataProperty
  set newValue SpotFleet {}
    = SpotFleet {spotFleetRequestConfigData = newValue, ..}