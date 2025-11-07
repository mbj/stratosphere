module Stratosphere.SageMaker.PartnerApp.PartnerAppMaintenanceConfigProperty (
        PartnerAppMaintenanceConfigProperty(..),
        mkPartnerAppMaintenanceConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PartnerAppMaintenanceConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-partnerapp-partnerappmaintenanceconfig.html>
    PartnerAppMaintenanceConfigProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-partnerapp-partnerappmaintenanceconfig.html#cfn-sagemaker-partnerapp-partnerappmaintenanceconfig-maintenancewindowstart>
                                         maintenanceWindowStart :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPartnerAppMaintenanceConfigProperty ::
  Value Prelude.Text -> PartnerAppMaintenanceConfigProperty
mkPartnerAppMaintenanceConfigProperty maintenanceWindowStart
  = PartnerAppMaintenanceConfigProperty
      {haddock_workaround_ = (),
       maintenanceWindowStart = maintenanceWindowStart}
instance ToResourceProperties PartnerAppMaintenanceConfigProperty where
  toResourceProperties PartnerAppMaintenanceConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::PartnerApp.PartnerAppMaintenanceConfig",
         supportsTags = Prelude.False,
         properties = ["MaintenanceWindowStart"
                         JSON..= maintenanceWindowStart]}
instance JSON.ToJSON PartnerAppMaintenanceConfigProperty where
  toJSON PartnerAppMaintenanceConfigProperty {..}
    = JSON.object
        ["MaintenanceWindowStart" JSON..= maintenanceWindowStart]
instance Property "MaintenanceWindowStart" PartnerAppMaintenanceConfigProperty where
  type PropertyType "MaintenanceWindowStart" PartnerAppMaintenanceConfigProperty = Value Prelude.Text
  set newValue PartnerAppMaintenanceConfigProperty {..}
    = PartnerAppMaintenanceConfigProperty
        {maintenanceWindowStart = newValue, ..}