module Stratosphere.OpenSearchService.Domain.EncryptionAtRestOptionsProperty (
        EncryptionAtRestOptionsProperty(..),
        mkEncryptionAtRestOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionAtRestOptionsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-encryptionatrestoptions.html>
    EncryptionAtRestOptionsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-encryptionatrestoptions.html#cfn-opensearchservice-domain-encryptionatrestoptions-enabled>
                                     enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-encryptionatrestoptions.html#cfn-opensearchservice-domain-encryptionatrestoptions-kmskeyid>
                                     kmsKeyId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionAtRestOptionsProperty ::
  EncryptionAtRestOptionsProperty
mkEncryptionAtRestOptionsProperty
  = EncryptionAtRestOptionsProperty
      {enabled = Prelude.Nothing, kmsKeyId = Prelude.Nothing}
instance ToResourceProperties EncryptionAtRestOptionsProperty where
  toResourceProperties EncryptionAtRestOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Domain.EncryptionAtRestOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId])}
instance JSON.ToJSON EncryptionAtRestOptionsProperty where
  toJSON EncryptionAtRestOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId]))
instance Property "Enabled" EncryptionAtRestOptionsProperty where
  type PropertyType "Enabled" EncryptionAtRestOptionsProperty = Value Prelude.Bool
  set newValue EncryptionAtRestOptionsProperty {..}
    = EncryptionAtRestOptionsProperty
        {enabled = Prelude.pure newValue, ..}
instance Property "KmsKeyId" EncryptionAtRestOptionsProperty where
  type PropertyType "KmsKeyId" EncryptionAtRestOptionsProperty = Value Prelude.Text
  set newValue EncryptionAtRestOptionsProperty {..}
    = EncryptionAtRestOptionsProperty
        {kmsKeyId = Prelude.pure newValue, ..}