module Stratosphere.Transfer.Connector.As2ConfigProperty (
        As2ConfigProperty(..), mkAs2ConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data As2ConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-connector-as2config.html>
    As2ConfigProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-connector-as2config.html#cfn-transfer-connector-as2config-basicauthsecretid>
                       basicAuthSecretId :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-connector-as2config.html#cfn-transfer-connector-as2config-compression>
                       compression :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-connector-as2config.html#cfn-transfer-connector-as2config-encryptionalgorithm>
                       encryptionAlgorithm :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-connector-as2config.html#cfn-transfer-connector-as2config-localprofileid>
                       localProfileId :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-connector-as2config.html#cfn-transfer-connector-as2config-mdnresponse>
                       mdnResponse :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-connector-as2config.html#cfn-transfer-connector-as2config-mdnsigningalgorithm>
                       mdnSigningAlgorithm :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-connector-as2config.html#cfn-transfer-connector-as2config-messagesubject>
                       messageSubject :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-connector-as2config.html#cfn-transfer-connector-as2config-partnerprofileid>
                       partnerProfileId :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-connector-as2config.html#cfn-transfer-connector-as2config-preservecontenttype>
                       preserveContentType :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-connector-as2config.html#cfn-transfer-connector-as2config-signingalgorithm>
                       signingAlgorithm :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAs2ConfigProperty :: As2ConfigProperty
mkAs2ConfigProperty
  = As2ConfigProperty
      {haddock_workaround_ = (), basicAuthSecretId = Prelude.Nothing,
       compression = Prelude.Nothing,
       encryptionAlgorithm = Prelude.Nothing,
       localProfileId = Prelude.Nothing, mdnResponse = Prelude.Nothing,
       mdnSigningAlgorithm = Prelude.Nothing,
       messageSubject = Prelude.Nothing,
       partnerProfileId = Prelude.Nothing,
       preserveContentType = Prelude.Nothing,
       signingAlgorithm = Prelude.Nothing}
instance ToResourceProperties As2ConfigProperty where
  toResourceProperties As2ConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Connector.As2Config",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BasicAuthSecretId" Prelude.<$> basicAuthSecretId,
                            (JSON..=) "Compression" Prelude.<$> compression,
                            (JSON..=) "EncryptionAlgorithm" Prelude.<$> encryptionAlgorithm,
                            (JSON..=) "LocalProfileId" Prelude.<$> localProfileId,
                            (JSON..=) "MdnResponse" Prelude.<$> mdnResponse,
                            (JSON..=) "MdnSigningAlgorithm" Prelude.<$> mdnSigningAlgorithm,
                            (JSON..=) "MessageSubject" Prelude.<$> messageSubject,
                            (JSON..=) "PartnerProfileId" Prelude.<$> partnerProfileId,
                            (JSON..=) "PreserveContentType" Prelude.<$> preserveContentType,
                            (JSON..=) "SigningAlgorithm" Prelude.<$> signingAlgorithm])}
instance JSON.ToJSON As2ConfigProperty where
  toJSON As2ConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BasicAuthSecretId" Prelude.<$> basicAuthSecretId,
               (JSON..=) "Compression" Prelude.<$> compression,
               (JSON..=) "EncryptionAlgorithm" Prelude.<$> encryptionAlgorithm,
               (JSON..=) "LocalProfileId" Prelude.<$> localProfileId,
               (JSON..=) "MdnResponse" Prelude.<$> mdnResponse,
               (JSON..=) "MdnSigningAlgorithm" Prelude.<$> mdnSigningAlgorithm,
               (JSON..=) "MessageSubject" Prelude.<$> messageSubject,
               (JSON..=) "PartnerProfileId" Prelude.<$> partnerProfileId,
               (JSON..=) "PreserveContentType" Prelude.<$> preserveContentType,
               (JSON..=) "SigningAlgorithm" Prelude.<$> signingAlgorithm]))
instance Property "BasicAuthSecretId" As2ConfigProperty where
  type PropertyType "BasicAuthSecretId" As2ConfigProperty = Value Prelude.Text
  set newValue As2ConfigProperty {..}
    = As2ConfigProperty {basicAuthSecretId = Prelude.pure newValue, ..}
instance Property "Compression" As2ConfigProperty where
  type PropertyType "Compression" As2ConfigProperty = Value Prelude.Text
  set newValue As2ConfigProperty {..}
    = As2ConfigProperty {compression = Prelude.pure newValue, ..}
instance Property "EncryptionAlgorithm" As2ConfigProperty where
  type PropertyType "EncryptionAlgorithm" As2ConfigProperty = Value Prelude.Text
  set newValue As2ConfigProperty {..}
    = As2ConfigProperty
        {encryptionAlgorithm = Prelude.pure newValue, ..}
instance Property "LocalProfileId" As2ConfigProperty where
  type PropertyType "LocalProfileId" As2ConfigProperty = Value Prelude.Text
  set newValue As2ConfigProperty {..}
    = As2ConfigProperty {localProfileId = Prelude.pure newValue, ..}
instance Property "MdnResponse" As2ConfigProperty where
  type PropertyType "MdnResponse" As2ConfigProperty = Value Prelude.Text
  set newValue As2ConfigProperty {..}
    = As2ConfigProperty {mdnResponse = Prelude.pure newValue, ..}
instance Property "MdnSigningAlgorithm" As2ConfigProperty where
  type PropertyType "MdnSigningAlgorithm" As2ConfigProperty = Value Prelude.Text
  set newValue As2ConfigProperty {..}
    = As2ConfigProperty
        {mdnSigningAlgorithm = Prelude.pure newValue, ..}
instance Property "MessageSubject" As2ConfigProperty where
  type PropertyType "MessageSubject" As2ConfigProperty = Value Prelude.Text
  set newValue As2ConfigProperty {..}
    = As2ConfigProperty {messageSubject = Prelude.pure newValue, ..}
instance Property "PartnerProfileId" As2ConfigProperty where
  type PropertyType "PartnerProfileId" As2ConfigProperty = Value Prelude.Text
  set newValue As2ConfigProperty {..}
    = As2ConfigProperty {partnerProfileId = Prelude.pure newValue, ..}
instance Property "PreserveContentType" As2ConfigProperty where
  type PropertyType "PreserveContentType" As2ConfigProperty = Value Prelude.Text
  set newValue As2ConfigProperty {..}
    = As2ConfigProperty
        {preserveContentType = Prelude.pure newValue, ..}
instance Property "SigningAlgorithm" As2ConfigProperty where
  type PropertyType "SigningAlgorithm" As2ConfigProperty = Value Prelude.Text
  set newValue As2ConfigProperty {..}
    = As2ConfigProperty {signingAlgorithm = Prelude.pure newValue, ..}