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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationmaintenanceconfiguration.html>
    ApplicationMaintenanceConfigurationProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationmaintenanceconfiguration.html#cfn-kinesisanalyticsv2-application-applicationmaintenanceconfiguration-applicationmaintenancewindowstarttime>
                                                 applicationMaintenanceWindowStartTime :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplicationMaintenanceConfigurationProperty ::
  Value Prelude.Text -> ApplicationMaintenanceConfigurationProperty
mkApplicationMaintenanceConfigurationProperty
  applicationMaintenanceWindowStartTime
  = ApplicationMaintenanceConfigurationProperty
      {haddock_workaround_ = (),
       applicationMaintenanceWindowStartTime = applicationMaintenanceWindowStartTime}
instance ToResourceProperties ApplicationMaintenanceConfigurationProperty where
  toResourceProperties
    ApplicationMaintenanceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.ApplicationMaintenanceConfiguration",
         supportsTags = Prelude.False,
         properties = ["ApplicationMaintenanceWindowStartTime"
                         JSON..= applicationMaintenanceWindowStartTime]}
instance JSON.ToJSON ApplicationMaintenanceConfigurationProperty where
  toJSON ApplicationMaintenanceConfigurationProperty {..}
    = JSON.object
        ["ApplicationMaintenanceWindowStartTime"
           JSON..= applicationMaintenanceWindowStartTime]
instance Property "ApplicationMaintenanceWindowStartTime" ApplicationMaintenanceConfigurationProperty where
  type PropertyType "ApplicationMaintenanceWindowStartTime" ApplicationMaintenanceConfigurationProperty = Value Prelude.Text
  set newValue ApplicationMaintenanceConfigurationProperty {..}
    = ApplicationMaintenanceConfigurationProperty
        {applicationMaintenanceWindowStartTime = newValue, ..}