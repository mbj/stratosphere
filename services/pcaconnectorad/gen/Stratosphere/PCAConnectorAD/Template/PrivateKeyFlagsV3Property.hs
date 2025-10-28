module Stratosphere.PCAConnectorAD.Template.PrivateKeyFlagsV3Property (
        PrivateKeyFlagsV3Property(..), mkPrivateKeyFlagsV3Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PrivateKeyFlagsV3Property
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-privatekeyflagsv3.html>
    PrivateKeyFlagsV3Property {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-privatekeyflagsv3.html#cfn-pcaconnectorad-template-privatekeyflagsv3-clientversion>
                               clientVersion :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-privatekeyflagsv3.html#cfn-pcaconnectorad-template-privatekeyflagsv3-exportablekey>
                               exportableKey :: (Prelude.Maybe (Value Prelude.Bool)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-privatekeyflagsv3.html#cfn-pcaconnectorad-template-privatekeyflagsv3-requirealternatesignaturealgorithm>
                               requireAlternateSignatureAlgorithm :: (Prelude.Maybe (Value Prelude.Bool)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-privatekeyflagsv3.html#cfn-pcaconnectorad-template-privatekeyflagsv3-strongkeyprotectionrequired>
                               strongKeyProtectionRequired :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrivateKeyFlagsV3Property ::
  Value Prelude.Text -> PrivateKeyFlagsV3Property
mkPrivateKeyFlagsV3Property clientVersion
  = PrivateKeyFlagsV3Property
      {haddock_workaround_ = (), clientVersion = clientVersion,
       exportableKey = Prelude.Nothing,
       requireAlternateSignatureAlgorithm = Prelude.Nothing,
       strongKeyProtectionRequired = Prelude.Nothing}
instance ToResourceProperties PrivateKeyFlagsV3Property where
  toResourceProperties PrivateKeyFlagsV3Property {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.PrivateKeyFlagsV3",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClientVersion" JSON..= clientVersion]
                           (Prelude.catMaybes
                              [(JSON..=) "ExportableKey" Prelude.<$> exportableKey,
                               (JSON..=) "RequireAlternateSignatureAlgorithm"
                                 Prelude.<$> requireAlternateSignatureAlgorithm,
                               (JSON..=) "StrongKeyProtectionRequired"
                                 Prelude.<$> strongKeyProtectionRequired]))}
instance JSON.ToJSON PrivateKeyFlagsV3Property where
  toJSON PrivateKeyFlagsV3Property {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClientVersion" JSON..= clientVersion]
              (Prelude.catMaybes
                 [(JSON..=) "ExportableKey" Prelude.<$> exportableKey,
                  (JSON..=) "RequireAlternateSignatureAlgorithm"
                    Prelude.<$> requireAlternateSignatureAlgorithm,
                  (JSON..=) "StrongKeyProtectionRequired"
                    Prelude.<$> strongKeyProtectionRequired])))
instance Property "ClientVersion" PrivateKeyFlagsV3Property where
  type PropertyType "ClientVersion" PrivateKeyFlagsV3Property = Value Prelude.Text
  set newValue PrivateKeyFlagsV3Property {..}
    = PrivateKeyFlagsV3Property {clientVersion = newValue, ..}
instance Property "ExportableKey" PrivateKeyFlagsV3Property where
  type PropertyType "ExportableKey" PrivateKeyFlagsV3Property = Value Prelude.Bool
  set newValue PrivateKeyFlagsV3Property {..}
    = PrivateKeyFlagsV3Property
        {exportableKey = Prelude.pure newValue, ..}
instance Property "RequireAlternateSignatureAlgorithm" PrivateKeyFlagsV3Property where
  type PropertyType "RequireAlternateSignatureAlgorithm" PrivateKeyFlagsV3Property = Value Prelude.Bool
  set newValue PrivateKeyFlagsV3Property {..}
    = PrivateKeyFlagsV3Property
        {requireAlternateSignatureAlgorithm = Prelude.pure newValue, ..}
instance Property "StrongKeyProtectionRequired" PrivateKeyFlagsV3Property where
  type PropertyType "StrongKeyProtectionRequired" PrivateKeyFlagsV3Property = Value Prelude.Bool
  set newValue PrivateKeyFlagsV3Property {..}
    = PrivateKeyFlagsV3Property
        {strongKeyProtectionRequired = Prelude.pure newValue, ..}