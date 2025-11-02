module Stratosphere.PCAConnectorAD.Template.PrivateKeyFlagsV4Property (
        PrivateKeyFlagsV4Property(..), mkPrivateKeyFlagsV4Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PrivateKeyFlagsV4Property
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-privatekeyflagsv4.html>
    PrivateKeyFlagsV4Property {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-privatekeyflagsv4.html#cfn-pcaconnectorad-template-privatekeyflagsv4-clientversion>
                               clientVersion :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-privatekeyflagsv4.html#cfn-pcaconnectorad-template-privatekeyflagsv4-exportablekey>
                               exportableKey :: (Prelude.Maybe (Value Prelude.Bool)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-privatekeyflagsv4.html#cfn-pcaconnectorad-template-privatekeyflagsv4-requirealternatesignaturealgorithm>
                               requireAlternateSignatureAlgorithm :: (Prelude.Maybe (Value Prelude.Bool)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-privatekeyflagsv4.html#cfn-pcaconnectorad-template-privatekeyflagsv4-requiresamekeyrenewal>
                               requireSameKeyRenewal :: (Prelude.Maybe (Value Prelude.Bool)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-privatekeyflagsv4.html#cfn-pcaconnectorad-template-privatekeyflagsv4-strongkeyprotectionrequired>
                               strongKeyProtectionRequired :: (Prelude.Maybe (Value Prelude.Bool)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-privatekeyflagsv4.html#cfn-pcaconnectorad-template-privatekeyflagsv4-uselegacyprovider>
                               useLegacyProvider :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrivateKeyFlagsV4Property ::
  Value Prelude.Text -> PrivateKeyFlagsV4Property
mkPrivateKeyFlagsV4Property clientVersion
  = PrivateKeyFlagsV4Property
      {haddock_workaround_ = (), clientVersion = clientVersion,
       exportableKey = Prelude.Nothing,
       requireAlternateSignatureAlgorithm = Prelude.Nothing,
       requireSameKeyRenewal = Prelude.Nothing,
       strongKeyProtectionRequired = Prelude.Nothing,
       useLegacyProvider = Prelude.Nothing}
instance ToResourceProperties PrivateKeyFlagsV4Property where
  toResourceProperties PrivateKeyFlagsV4Property {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.PrivateKeyFlagsV4",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClientVersion" JSON..= clientVersion]
                           (Prelude.catMaybes
                              [(JSON..=) "ExportableKey" Prelude.<$> exportableKey,
                               (JSON..=) "RequireAlternateSignatureAlgorithm"
                                 Prelude.<$> requireAlternateSignatureAlgorithm,
                               (JSON..=) "RequireSameKeyRenewal"
                                 Prelude.<$> requireSameKeyRenewal,
                               (JSON..=) "StrongKeyProtectionRequired"
                                 Prelude.<$> strongKeyProtectionRequired,
                               (JSON..=) "UseLegacyProvider" Prelude.<$> useLegacyProvider]))}
instance JSON.ToJSON PrivateKeyFlagsV4Property where
  toJSON PrivateKeyFlagsV4Property {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClientVersion" JSON..= clientVersion]
              (Prelude.catMaybes
                 [(JSON..=) "ExportableKey" Prelude.<$> exportableKey,
                  (JSON..=) "RequireAlternateSignatureAlgorithm"
                    Prelude.<$> requireAlternateSignatureAlgorithm,
                  (JSON..=) "RequireSameKeyRenewal"
                    Prelude.<$> requireSameKeyRenewal,
                  (JSON..=) "StrongKeyProtectionRequired"
                    Prelude.<$> strongKeyProtectionRequired,
                  (JSON..=) "UseLegacyProvider" Prelude.<$> useLegacyProvider])))
instance Property "ClientVersion" PrivateKeyFlagsV4Property where
  type PropertyType "ClientVersion" PrivateKeyFlagsV4Property = Value Prelude.Text
  set newValue PrivateKeyFlagsV4Property {..}
    = PrivateKeyFlagsV4Property {clientVersion = newValue, ..}
instance Property "ExportableKey" PrivateKeyFlagsV4Property where
  type PropertyType "ExportableKey" PrivateKeyFlagsV4Property = Value Prelude.Bool
  set newValue PrivateKeyFlagsV4Property {..}
    = PrivateKeyFlagsV4Property
        {exportableKey = Prelude.pure newValue, ..}
instance Property "RequireAlternateSignatureAlgorithm" PrivateKeyFlagsV4Property where
  type PropertyType "RequireAlternateSignatureAlgorithm" PrivateKeyFlagsV4Property = Value Prelude.Bool
  set newValue PrivateKeyFlagsV4Property {..}
    = PrivateKeyFlagsV4Property
        {requireAlternateSignatureAlgorithm = Prelude.pure newValue, ..}
instance Property "RequireSameKeyRenewal" PrivateKeyFlagsV4Property where
  type PropertyType "RequireSameKeyRenewal" PrivateKeyFlagsV4Property = Value Prelude.Bool
  set newValue PrivateKeyFlagsV4Property {..}
    = PrivateKeyFlagsV4Property
        {requireSameKeyRenewal = Prelude.pure newValue, ..}
instance Property "StrongKeyProtectionRequired" PrivateKeyFlagsV4Property where
  type PropertyType "StrongKeyProtectionRequired" PrivateKeyFlagsV4Property = Value Prelude.Bool
  set newValue PrivateKeyFlagsV4Property {..}
    = PrivateKeyFlagsV4Property
        {strongKeyProtectionRequired = Prelude.pure newValue, ..}
instance Property "UseLegacyProvider" PrivateKeyFlagsV4Property where
  type PropertyType "UseLegacyProvider" PrivateKeyFlagsV4Property = Value Prelude.Bool
  set newValue PrivateKeyFlagsV4Property {..}
    = PrivateKeyFlagsV4Property
        {useLegacyProvider = Prelude.pure newValue, ..}