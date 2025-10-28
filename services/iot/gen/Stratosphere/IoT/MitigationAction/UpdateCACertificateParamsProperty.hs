module Stratosphere.IoT.MitigationAction.UpdateCACertificateParamsProperty (
        UpdateCACertificateParamsProperty(..),
        mkUpdateCACertificateParamsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UpdateCACertificateParamsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-mitigationaction-updatecacertificateparams.html>
    UpdateCACertificateParamsProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-mitigationaction-updatecacertificateparams.html#cfn-iot-mitigationaction-updatecacertificateparams-action>
                                       action :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUpdateCACertificateParamsProperty ::
  Value Prelude.Text -> UpdateCACertificateParamsProperty
mkUpdateCACertificateParamsProperty action
  = UpdateCACertificateParamsProperty
      {haddock_workaround_ = (), action = action}
instance ToResourceProperties UpdateCACertificateParamsProperty where
  toResourceProperties UpdateCACertificateParamsProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::MitigationAction.UpdateCACertificateParams",
         supportsTags = Prelude.False,
         properties = ["Action" JSON..= action]}
instance JSON.ToJSON UpdateCACertificateParamsProperty where
  toJSON UpdateCACertificateParamsProperty {..}
    = JSON.object ["Action" JSON..= action]
instance Property "Action" UpdateCACertificateParamsProperty where
  type PropertyType "Action" UpdateCACertificateParamsProperty = Value Prelude.Text
  set newValue UpdateCACertificateParamsProperty {..}
    = UpdateCACertificateParamsProperty {action = newValue, ..}