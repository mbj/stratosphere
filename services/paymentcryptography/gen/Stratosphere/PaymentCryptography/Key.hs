module Stratosphere.PaymentCryptography.Key (
        module Exports, Key(..), mkKey
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PaymentCryptography.Key.KeyAttributesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Key
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-paymentcryptography-key.html>
    Key {haddock_workaround_ :: (),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-paymentcryptography-key.html#cfn-paymentcryptography-key-enabled>
         enabled :: (Prelude.Maybe (Value Prelude.Bool)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-paymentcryptography-key.html#cfn-paymentcryptography-key-exportable>
         exportable :: (Value Prelude.Bool),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-paymentcryptography-key.html#cfn-paymentcryptography-key-keyattributes>
         keyAttributes :: KeyAttributesProperty,
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-paymentcryptography-key.html#cfn-paymentcryptography-key-keycheckvaluealgorithm>
         keyCheckValueAlgorithm :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-paymentcryptography-key.html#cfn-paymentcryptography-key-tags>
         tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKey :: Value Prelude.Bool -> KeyAttributesProperty -> Key
mkKey exportable keyAttributes
  = Key
      {haddock_workaround_ = (), exportable = exportable,
       keyAttributes = keyAttributes, enabled = Prelude.Nothing,
       keyCheckValueAlgorithm = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Key where
  toResourceProperties Key {..}
    = ResourceProperties
        {awsType = "AWS::PaymentCryptography::Key",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Exportable" JSON..= exportable,
                            "KeyAttributes" JSON..= keyAttributes]
                           (Prelude.catMaybes
                              [(JSON..=) "Enabled" Prelude.<$> enabled,
                               (JSON..=) "KeyCheckValueAlgorithm"
                                 Prelude.<$> keyCheckValueAlgorithm,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Key where
  toJSON Key {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Exportable" JSON..= exportable,
               "KeyAttributes" JSON..= keyAttributes]
              (Prelude.catMaybes
                 [(JSON..=) "Enabled" Prelude.<$> enabled,
                  (JSON..=) "KeyCheckValueAlgorithm"
                    Prelude.<$> keyCheckValueAlgorithm,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Enabled" Key where
  type PropertyType "Enabled" Key = Value Prelude.Bool
  set newValue Key {..} = Key {enabled = Prelude.pure newValue, ..}
instance Property "Exportable" Key where
  type PropertyType "Exportable" Key = Value Prelude.Bool
  set newValue Key {..} = Key {exportable = newValue, ..}
instance Property "KeyAttributes" Key where
  type PropertyType "KeyAttributes" Key = KeyAttributesProperty
  set newValue Key {..} = Key {keyAttributes = newValue, ..}
instance Property "KeyCheckValueAlgorithm" Key where
  type PropertyType "KeyCheckValueAlgorithm" Key = Value Prelude.Text
  set newValue Key {..}
    = Key {keyCheckValueAlgorithm = Prelude.pure newValue, ..}
instance Property "Tags" Key where
  type PropertyType "Tags" Key = [Tag]
  set newValue Key {..} = Key {tags = Prelude.pure newValue, ..}