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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-mitigationaction-updatedevicecertificateparams.html>
    UpdateDeviceCertificateParamsProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-mitigationaction-updatedevicecertificateparams.html#cfn-iot-mitigationaction-updatedevicecertificateparams-action>
                                           action :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUpdateDeviceCertificateParamsProperty ::
  Value Prelude.Text -> UpdateDeviceCertificateParamsProperty
mkUpdateDeviceCertificateParamsProperty action
  = UpdateDeviceCertificateParamsProperty
      {haddock_workaround_ = (), action = action}
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
  set newValue UpdateDeviceCertificateParamsProperty {..}
    = UpdateDeviceCertificateParamsProperty {action = newValue, ..}