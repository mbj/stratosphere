module Stratosphere.EC2.SpotFleet (
        module Exports, SpotFleet(..), mkSpotFleet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.SpotFleet.SpotFleetRequestConfigDataProperty as Exports
import Stratosphere.ResourceProperties
data SpotFleet
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-spotfleet.html>
    SpotFleet {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-spotfleet.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata>
               spotFleetRequestConfigData :: SpotFleetRequestConfigDataProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSpotFleet :: SpotFleetRequestConfigDataProperty -> SpotFleet
mkSpotFleet spotFleetRequestConfigData
  = SpotFleet
      {haddock_workaround_ = (),
       spotFleetRequestConfigData = spotFleetRequestConfigData}
instance ToResourceProperties SpotFleet where
  toResourceProperties SpotFleet {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet", supportsTags = Prelude.False,
         properties = ["SpotFleetRequestConfigData"
                         JSON..= spotFleetRequestConfigData]}
instance JSON.ToJSON SpotFleet where
  toJSON SpotFleet {..}
    = JSON.object
        ["SpotFleetRequestConfigData" JSON..= spotFleetRequestConfigData]
instance Property "SpotFleetRequestConfigData" SpotFleet where
  type PropertyType "SpotFleetRequestConfigData" SpotFleet = SpotFleetRequestConfigDataProperty
  set newValue SpotFleet {..}
    = SpotFleet {spotFleetRequestConfigData = newValue, ..}