module Stratosphere.PCAConnectorAD.Template.PrivateKeyFlagsV2Property (
        PrivateKeyFlagsV2Property(..), mkPrivateKeyFlagsV2Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PrivateKeyFlagsV2Property
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-privatekeyflagsv2.html>
    PrivateKeyFlagsV2Property {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-privatekeyflagsv2.html#cfn-pcaconnectorad-template-privatekeyflagsv2-clientversion>
                               clientVersion :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-privatekeyflagsv2.html#cfn-pcaconnectorad-template-privatekeyflagsv2-exportablekey>
                               exportableKey :: (Prelude.Maybe (Value Prelude.Bool)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-privatekeyflagsv2.html#cfn-pcaconnectorad-template-privatekeyflagsv2-strongkeyprotectionrequired>
                               strongKeyProtectionRequired :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrivateKeyFlagsV2Property ::
  Value Prelude.Text -> PrivateKeyFlagsV2Property
mkPrivateKeyFlagsV2Property clientVersion
  = PrivateKeyFlagsV2Property
      {haddock_workaround_ = (), clientVersion = clientVersion,
       exportableKey = Prelude.Nothing,
       strongKeyProtectionRequired = Prelude.Nothing}
instance ToResourceProperties PrivateKeyFlagsV2Property where
  toResourceProperties PrivateKeyFlagsV2Property {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.PrivateKeyFlagsV2",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClientVersion" JSON..= clientVersion]
                           (Prelude.catMaybes
                              [(JSON..=) "ExportableKey" Prelude.<$> exportableKey,
                               (JSON..=) "StrongKeyProtectionRequired"
                                 Prelude.<$> strongKeyProtectionRequired]))}
instance JSON.ToJSON PrivateKeyFlagsV2Property where
  toJSON PrivateKeyFlagsV2Property {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClientVersion" JSON..= clientVersion]
              (Prelude.catMaybes
                 [(JSON..=) "ExportableKey" Prelude.<$> exportableKey,
                  (JSON..=) "StrongKeyProtectionRequired"
                    Prelude.<$> strongKeyProtectionRequired])))
instance Property "ClientVersion" PrivateKeyFlagsV2Property where
  type PropertyType "ClientVersion" PrivateKeyFlagsV2Property = Value Prelude.Text
  set newValue PrivateKeyFlagsV2Property {..}
    = PrivateKeyFlagsV2Property {clientVersion = newValue, ..}
instance Property "ExportableKey" PrivateKeyFlagsV2Property where
  type PropertyType "ExportableKey" PrivateKeyFlagsV2Property = Value Prelude.Bool
  set newValue PrivateKeyFlagsV2Property {..}
    = PrivateKeyFlagsV2Property
        {exportableKey = Prelude.pure newValue, ..}
instance Property "StrongKeyProtectionRequired" PrivateKeyFlagsV2Property where
  type PropertyType "StrongKeyProtectionRequired" PrivateKeyFlagsV2Property = Value Prelude.Bool
  set newValue PrivateKeyFlagsV2Property {..}
    = PrivateKeyFlagsV2Property
        {strongKeyProtectionRequired = Prelude.pure newValue, ..}