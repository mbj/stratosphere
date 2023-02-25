module Stratosphere.AppStream.ApplicationFleetAssociation (
        ApplicationFleetAssociation(..), mkApplicationFleetAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApplicationFleetAssociation
  = ApplicationFleetAssociation {applicationArn :: (Value Prelude.Text),
                                 fleetName :: (Value Prelude.Text)}
mkApplicationFleetAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> ApplicationFleetAssociation
mkApplicationFleetAssociation applicationArn fleetName
  = ApplicationFleetAssociation
      {applicationArn = applicationArn, fleetName = fleetName}
instance ToResourceProperties ApplicationFleetAssociation where
  toResourceProperties ApplicationFleetAssociation {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::ApplicationFleetAssociation",
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