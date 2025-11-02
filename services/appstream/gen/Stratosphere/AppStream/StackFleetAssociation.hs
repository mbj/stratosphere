module Stratosphere.AppStream.StackFleetAssociation (
        StackFleetAssociation(..), mkStackFleetAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StackFleetAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackfleetassociation.html>
    StackFleetAssociation {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackfleetassociation.html#cfn-appstream-stackfleetassociation-fleetname>
                           fleetName :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackfleetassociation.html#cfn-appstream-stackfleetassociation-stackname>
                           stackName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStackFleetAssociation ::
  Value Prelude.Text -> Value Prelude.Text -> StackFleetAssociation
mkStackFleetAssociation fleetName stackName
  = StackFleetAssociation
      {haddock_workaround_ = (), fleetName = fleetName,
       stackName = stackName}
instance ToResourceProperties StackFleetAssociation where
  toResourceProperties StackFleetAssociation {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::StackFleetAssociation",
         supportsTags = Prelude.False,
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