module Stratosphere.PCAConnectorSCEP.Connector.MobileDeviceManagementProperty (
        module Exports, MobileDeviceManagementProperty(..),
        mkMobileDeviceManagementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PCAConnectorSCEP.Connector.IntuneConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data MobileDeviceManagementProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorscep-connector-mobiledevicemanagement.html>
    MobileDeviceManagementProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorscep-connector-mobiledevicemanagement.html#cfn-pcaconnectorscep-connector-mobiledevicemanagement-intune>
                                    intune :: IntuneConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMobileDeviceManagementProperty ::
  IntuneConfigurationProperty -> MobileDeviceManagementProperty
mkMobileDeviceManagementProperty intune
  = MobileDeviceManagementProperty
      {haddock_workaround_ = (), intune = intune}
instance ToResourceProperties MobileDeviceManagementProperty where
  toResourceProperties MobileDeviceManagementProperty {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorSCEP::Connector.MobileDeviceManagement",
         supportsTags = Prelude.False,
         properties = ["Intune" JSON..= intune]}
instance JSON.ToJSON MobileDeviceManagementProperty where
  toJSON MobileDeviceManagementProperty {..}
    = JSON.object ["Intune" JSON..= intune]
instance Property "Intune" MobileDeviceManagementProperty where
  type PropertyType "Intune" MobileDeviceManagementProperty = IntuneConfigurationProperty
  set newValue MobileDeviceManagementProperty {..}
    = MobileDeviceManagementProperty {intune = newValue, ..}