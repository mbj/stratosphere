module Stratosphere.PCAConnectorAD.Template.KeyUsagePropertyFlagsProperty (
        KeyUsagePropertyFlagsProperty(..), mkKeyUsagePropertyFlagsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KeyUsagePropertyFlagsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-keyusagepropertyflags.html>
    KeyUsagePropertyFlagsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-keyusagepropertyflags.html#cfn-pcaconnectorad-template-keyusagepropertyflags-decrypt>
                                   decrypt :: (Prelude.Maybe (Value Prelude.Bool)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-keyusagepropertyflags.html#cfn-pcaconnectorad-template-keyusagepropertyflags-keyagreement>
                                   keyAgreement :: (Prelude.Maybe (Value Prelude.Bool)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-keyusagepropertyflags.html#cfn-pcaconnectorad-template-keyusagepropertyflags-sign>
                                   sign :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKeyUsagePropertyFlagsProperty :: KeyUsagePropertyFlagsProperty
mkKeyUsagePropertyFlagsProperty
  = KeyUsagePropertyFlagsProperty
      {haddock_workaround_ = (), decrypt = Prelude.Nothing,
       keyAgreement = Prelude.Nothing, sign = Prelude.Nothing}
instance ToResourceProperties KeyUsagePropertyFlagsProperty where
  toResourceProperties KeyUsagePropertyFlagsProperty {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.KeyUsagePropertyFlags",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Decrypt" Prelude.<$> decrypt,
                            (JSON..=) "KeyAgreement" Prelude.<$> keyAgreement,
                            (JSON..=) "Sign" Prelude.<$> sign])}
instance JSON.ToJSON KeyUsagePropertyFlagsProperty where
  toJSON KeyUsagePropertyFlagsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Decrypt" Prelude.<$> decrypt,
               (JSON..=) "KeyAgreement" Prelude.<$> keyAgreement,
               (JSON..=) "Sign" Prelude.<$> sign]))
instance Property "Decrypt" KeyUsagePropertyFlagsProperty where
  type PropertyType "Decrypt" KeyUsagePropertyFlagsProperty = Value Prelude.Bool
  set newValue KeyUsagePropertyFlagsProperty {..}
    = KeyUsagePropertyFlagsProperty
        {decrypt = Prelude.pure newValue, ..}
instance Property "KeyAgreement" KeyUsagePropertyFlagsProperty where
  type PropertyType "KeyAgreement" KeyUsagePropertyFlagsProperty = Value Prelude.Bool
  set newValue KeyUsagePropertyFlagsProperty {..}
    = KeyUsagePropertyFlagsProperty
        {keyAgreement = Prelude.pure newValue, ..}
instance Property "Sign" KeyUsagePropertyFlagsProperty where
  type PropertyType "Sign" KeyUsagePropertyFlagsProperty = Value Prelude.Bool
  set newValue KeyUsagePropertyFlagsProperty {..}
    = KeyUsagePropertyFlagsProperty {sign = Prelude.pure newValue, ..}