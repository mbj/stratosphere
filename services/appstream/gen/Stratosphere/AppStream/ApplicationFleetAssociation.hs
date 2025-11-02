module Stratosphere.AppStream.ApplicationFleetAssociation (
        ApplicationFleetAssociation(..), mkApplicationFleetAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApplicationFleetAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-applicationfleetassociation.html>
    ApplicationFleetAssociation {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-applicationfleetassociation.html#cfn-appstream-applicationfleetassociation-applicationarn>
                                 applicationArn :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-applicationfleetassociation.html#cfn-appstream-applicationfleetassociation-fleetname>
                                 fleetName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplicationFleetAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> ApplicationFleetAssociation
mkApplicationFleetAssociation applicationArn fleetName
  = ApplicationFleetAssociation
      {haddock_workaround_ = (), applicationArn = applicationArn,
       fleetName = fleetName}
instance ToResourceProperties ApplicationFleetAssociation where
  toResourceProperties ApplicationFleetAssociation {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::ApplicationFleetAssociation",
         supportsTags = Prelude.False,
         properties = ["ApplicationArn" JSON..= applicationArn,
                       "FleetName" JSON..= fleetName]}
instance JSON.ToJSON ApplicationFleetAssociation where
  toJSON ApplicationFleetAssociation {..}
    = JSON.object
        ["ApplicationArn" JSON..= applicationArn,
         "FleetName" JSON..= fleetName]
instance Property "ApplicationArn" ApplicationFleetAssociation where
  type PropertyType "ApplicationArn" ApplicationFleetAssociation = Value Prelude.Text
  set newValue ApplicationFleetAssociation {..}
    = ApplicationFleetAssociation {applicationArn = newValue, ..}
instance Property "FleetName" ApplicationFleetAssociation where
  type PropertyType "FleetName" ApplicationFleetAssociation = Value Prelude.Text
  set newValue ApplicationFleetAssociation {..}
    = ApplicationFleetAssociation {fleetName = newValue, ..}