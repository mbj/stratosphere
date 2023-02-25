module Stratosphere.KinesisAnalyticsV2.Application.ApplicationMaintenanceConfigurationProperty (
        ApplicationMaintenanceConfigurationProperty(..),
        mkApplicationMaintenanceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApplicationMaintenanceConfigurationProperty
  = ApplicationMaintenanceConfigurationProperty {applicationMaintenanceWindowStartTime :: (Value Prelude.Text)}
mkApplicationMaintenanceConfigurationProperty ::
  Value Prelude.Text -> ApplicationMaintenanceConfigurationProperty
mkApplicationMaintenanceConfigurationProperty
  applicationMaintenanceWindowStartTime
  = ApplicationMaintenanceConfigurationProperty
      {applicationMaintenanceWindowStartTime = applicationMaintenanceWindowStartTime}
instance ToResourceProperties ApplicationMaintenanceConfigurationProperty where
  toResourceProperties
    ApplicationMaintenanceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.ApplicationMaintenanceConfiguration",
         properties = ["ApplicationMaintenanceWindowStartTime"
                         JSON..= applicationMaintenanceWindowStartTime]}
instance JSON.ToJSON ApplicationMaintenanceConfigurationProperty where
  toJSON ApplicationMaintenanceConfigurationProperty {..}
    = JSON.object
        ["ApplicationMaintenanceWindowStartTime"
           JSON..= applicationMaintenanceWindowStartTime]
instance Property "ApplicationMaintenanceWindowStartTime" ApplicationMaintenanceConfigurationProperty where
  type PropertyType "ApplicationMaintenanceWindowStartTime" ApplicationMaintenanceConfigurationProperty = Value Prelude.Text
  set newValue ApplicationMaintenanceConfigurationProperty {}
    = ApplicationMaintenanceConfigurationProperty
        {applicationMaintenanceWindowStartTime = newValue, ..}