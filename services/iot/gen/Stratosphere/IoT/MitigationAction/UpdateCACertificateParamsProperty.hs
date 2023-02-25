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
  = UpdateCACertificateParamsProperty {action :: (Value Prelude.Text)}
mkUpdateCACertificateParamsProperty ::
  Value Prelude.Text -> UpdateCACertificateParamsProperty
mkUpdateCACertificateParamsProperty action
  = UpdateCACertificateParamsProperty {action = action}
instance ToResourceProperties UpdateCACertificateParamsProperty where
  toResourceProperties UpdateCACertificateParamsProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::MitigationAction.UpdateCACertificateParams",
         properties = ["Action" JSON..= action]}
instance JSON.ToJSON UpdateCACertificateParamsProperty where
  toJSON UpdateCACertificateParamsProperty {..}
    = JSON.object ["Action" JSON..= action]
instance Property "Action" UpdateCACertificateParamsProperty where
  type PropertyType "Action" UpdateCACertificateParamsProperty = Value Prelude.Text
  set newValue UpdateCACertificateParamsProperty {}
    = UpdateCACertificateParamsProperty {action = newValue, ..}