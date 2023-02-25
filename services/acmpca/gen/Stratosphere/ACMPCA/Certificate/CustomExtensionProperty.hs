module Stratosphere.ACMPCA.Certificate.CustomExtensionProperty (
        CustomExtensionProperty(..), mkCustomExtensionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomExtensionProperty
  = CustomExtensionProperty {critical :: (Prelude.Maybe (Value Prelude.Bool)),
                             objectIdentifier :: (Value Prelude.Text),
                             value :: (Value Prelude.Text)}
mkCustomExtensionProperty ::
  Value Prelude.Text -> Value Prelude.Text -> CustomExtensionProperty
mkCustomExtensionProperty objectIdentifier value
  = CustomExtensionProperty
      {objectIdentifier = objectIdentifier, value = value,
       critical = Prelude.Nothing}
instance ToResourceProperties CustomExtensionProperty where
  toResourceProperties CustomExtensionProperty {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::Certificate.CustomExtension",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ObjectIdentifier" JSON..= objectIdentifier,
                            "Value" JSON..= value]
                           (Prelude.catMaybes [(JSON..=) "Critical" Prelude.<$> critical]))}
instance JSON.ToJSON CustomExtensionProperty where
  toJSON CustomExtensionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ObjectIdentifier" JSON..= objectIdentifier,
               "Value" JSON..= value]
              (Prelude.catMaybes [(JSON..=) "Critical" Prelude.<$> critical])))
instance Property "Critical" CustomExtensionProperty where
  type PropertyType "Critical" CustomExtensionProperty = Value Prelude.Bool
  set newValue CustomExtensionProperty {..}
    = CustomExtensionProperty {critical = Prelude.pure newValue, ..}
instance Property "ObjectIdentifier" CustomExtensionProperty where
  type PropertyType "ObjectIdentifier" CustomExtensionProperty = Value Prelude.Text
  set newValue CustomExtensionProperty {..}
    = CustomExtensionProperty {objectIdentifier = newValue, ..}
instance Property "Value" CustomExtensionProperty where
  type PropertyType "Value" CustomExtensionProperty = Value Prelude.Text
  set newValue CustomExtensionProperty {..}
    = CustomExtensionProperty {value = newValue, ..}