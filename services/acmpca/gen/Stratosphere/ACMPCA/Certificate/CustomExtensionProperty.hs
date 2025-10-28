module Stratosphere.ACMPCA.Certificate.CustomExtensionProperty (
        CustomExtensionProperty(..), mkCustomExtensionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomExtensionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-customextension.html>
    CustomExtensionProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-customextension.html#cfn-acmpca-certificate-customextension-critical>
                             critical :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-customextension.html#cfn-acmpca-certificate-customextension-objectidentifier>
                             objectIdentifier :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-customextension.html#cfn-acmpca-certificate-customextension-value>
                             value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomExtensionProperty ::
  Value Prelude.Text -> Value Prelude.Text -> CustomExtensionProperty
mkCustomExtensionProperty objectIdentifier value
  = CustomExtensionProperty
      {haddock_workaround_ = (), objectIdentifier = objectIdentifier,
       value = value, critical = Prelude.Nothing}
instance ToResourceProperties CustomExtensionProperty where
  toResourceProperties CustomExtensionProperty {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::Certificate.CustomExtension",
         supportsTags = Prelude.False,
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