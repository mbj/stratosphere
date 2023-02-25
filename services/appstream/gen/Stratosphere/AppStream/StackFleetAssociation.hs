module Stratosphere.AppStream.StackFleetAssociation (
        StackFleetAssociation(..), mkStackFleetAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StackFleetAssociation
  = StackFleetAssociation {fleetName :: (Value Prelude.Text),
                           stackName :: (Value Prelude.Text)}
mkStackFleetAssociation ::
  Value Prelude.Text -> Value Prelude.Text -> StackFleetAssociation
mkStackFleetAssociation fleetName stackName
  = StackFleetAssociation
      {fleetName = fleetName, stackName = stackName}
instance ToResourceProperties StackFleetAssociation where
  toResourceProperties StackFleetAssociation {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::StackFleetAssociation",
         properties = ["FleetName" JSON..= fleetName,
                       "StackName" JSON..= stackName]}
instance JSON.ToJSON StackFleetAssociation where
  toJSON StackFleetAssociation {..}
    = JSON.object
        ["FleetName" JSON..= fleetName, "StackName" JSON..= stackName]
instance Property "FleetName" StackFleetAssociation where
  type PropertyType "FleetName" StackFleetAssociation = Value Prelude.Text
  set newValue StackFleetAssociation {..}
    = StackFleetAssociation {fleetName = newValue, ..}
instance Property "StackName" StackFleetAssociation where
  type PropertyType "StackName" StackFleetAssociation = Value Prelude.Text
  set newValue StackFleetAssociation {..}
    = StackFleetAssociation {stackName = newValue, ..}