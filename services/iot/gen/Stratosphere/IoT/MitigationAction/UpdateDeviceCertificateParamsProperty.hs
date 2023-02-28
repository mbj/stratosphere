module Stratosphere.IoT.MitigationAction.UpdateDeviceCertificateParamsProperty (
        UpdateDeviceCertificateParamsProperty(..),
        mkUpdateDeviceCertificateParamsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UpdateDeviceCertificateParamsProperty
  = UpdateDeviceCertificateParamsProperty {action :: (Value Prelude.Text)}
mkUpdateDeviceCertificateParamsProperty ::
  Value Prelude.Text -> UpdateDeviceCertificateParamsProperty
mkUpdateDeviceCertificateParamsProperty action
  = UpdateDeviceCertificateParamsProperty {action = action}
instance ToResourceProperties UpdateDeviceCertificateParamsProperty where
  toResourceProperties UpdateDeviceCertificateParamsProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::MitigationAction.UpdateDeviceCertificateParams",
         supportsTags = Prelude.False,
         properties = ["Action" JSON..= action]}
instance JSON.ToJSON UpdateDeviceCertificateParamsProperty where
  toJSON UpdateDeviceCertificateParamsProperty {..}
    = JSON.object ["Action" JSON..= action]
instance Property "Action" UpdateDeviceCertificateParamsProperty where
  type PropertyType "Action" UpdateDeviceCertificateParamsProperty = Value Prelude.Text
  set newValue UpdateDeviceCertificateParamsProperty {}
    = UpdateDeviceCertificateParamsProperty {action = newValue, ..}