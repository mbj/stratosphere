module Stratosphere.PaymentCryptography.Key.KeyAttributesProperty (
        module Exports, KeyAttributesProperty(..), mkKeyAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PaymentCryptography.Key.KeyModesOfUseProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KeyAttributesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-paymentcryptography-key-keyattributes.html>
    KeyAttributesProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-paymentcryptography-key-keyattributes.html#cfn-paymentcryptography-key-keyattributes-keyalgorithm>
                           keyAlgorithm :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-paymentcryptography-key-keyattributes.html#cfn-paymentcryptography-key-keyattributes-keyclass>
                           keyClass :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-paymentcryptography-key-keyattributes.html#cfn-paymentcryptography-key-keyattributes-keymodesofuse>
                           keyModesOfUse :: KeyModesOfUseProperty,
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-paymentcryptography-key-keyattributes.html#cfn-paymentcryptography-key-keyattributes-keyusage>
                           keyUsage :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKeyAttributesProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> KeyModesOfUseProperty
        -> Value Prelude.Text -> KeyAttributesProperty
mkKeyAttributesProperty
  keyAlgorithm
  keyClass
  keyModesOfUse
  keyUsage
  = KeyAttributesProperty
      {haddock_workaround_ = (), keyAlgorithm = keyAlgorithm,
       keyClass = keyClass, keyModesOfUse = keyModesOfUse,
       keyUsage = keyUsage}
instance ToResourceProperties KeyAttributesProperty where
  toResourceProperties KeyAttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::PaymentCryptography::Key.KeyAttributes",
         supportsTags = Prelude.False,
         properties = ["KeyAlgorithm" JSON..= keyAlgorithm,
                       "KeyClass" JSON..= keyClass, "KeyModesOfUse" JSON..= keyModesOfUse,
                       "KeyUsage" JSON..= keyUsage]}
instance JSON.ToJSON KeyAttributesProperty where
  toJSON KeyAttributesProperty {..}
    = JSON.object
        ["KeyAlgorithm" JSON..= keyAlgorithm, "KeyClass" JSON..= keyClass,
         "KeyModesOfUse" JSON..= keyModesOfUse, "KeyUsage" JSON..= keyUsage]
instance Property "KeyAlgorithm" KeyAttributesProperty where
  type PropertyType "KeyAlgorithm" KeyAttributesProperty = Value Prelude.Text
  set newValue KeyAttributesProperty {..}
    = KeyAttributesProperty {keyAlgorithm = newValue, ..}
instance Property "KeyClass" KeyAttributesProperty where
  type PropertyType "KeyClass" KeyAttributesProperty = Value Prelude.Text
  set newValue KeyAttributesProperty {..}
    = KeyAttributesProperty {keyClass = newValue, ..}
instance Property "KeyModesOfUse" KeyAttributesProperty where
  type PropertyType "KeyModesOfUse" KeyAttributesProperty = KeyModesOfUseProperty
  set newValue KeyAttributesProperty {..}
    = KeyAttributesProperty {keyModesOfUse = newValue, ..}
instance Property "KeyUsage" KeyAttributesProperty where
  type PropertyType "KeyUsage" KeyAttributesProperty = Value Prelude.Text
  set newValue KeyAttributesProperty {..}
    = KeyAttributesProperty {keyUsage = newValue, ..}