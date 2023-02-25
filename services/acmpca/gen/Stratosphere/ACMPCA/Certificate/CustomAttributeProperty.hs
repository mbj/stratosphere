module Stratosphere.ACMPCA.Certificate.CustomAttributeProperty (
        CustomAttributeProperty(..), mkCustomAttributeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomAttributeProperty
  = CustomAttributeProperty {objectIdentifier :: (Value Prelude.Text),
                             value :: (Value Prelude.Text)}
mkCustomAttributeProperty ::
  Value Prelude.Text -> Value Prelude.Text -> CustomAttributeProperty
mkCustomAttributeProperty objectIdentifier value
  = CustomAttributeProperty
      {objectIdentifier = objectIdentifier, value = value}
instance ToResourceProperties CustomAttributeProperty where
  toResourceProperties CustomAttributeProperty {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::Certificate.CustomAttribute",
         properties = ["ObjectIdentifier" JSON..= objectIdentifier,
                       "Value" JSON..= value]}
instance JSON.ToJSON CustomAttributeProperty where
  toJSON CustomAttributeProperty {..}
    = JSON.object
        ["ObjectIdentifier" JSON..= objectIdentifier,
         "Value" JSON..= value]
instance Property "ObjectIdentifier" CustomAttributeProperty where
  type PropertyType "ObjectIdentifier" CustomAttributeProperty = Value Prelude.Text
  set newValue CustomAttributeProperty {..}
    = CustomAttributeProperty {objectIdentifier = newValue, ..}
instance Property "Value" CustomAttributeProperty where
  type PropertyType "Value" CustomAttributeProperty = Value Prelude.Text
  set newValue CustomAttributeProperty {..}
    = CustomAttributeProperty {value = newValue, ..}