module Stratosphere.Elasticsearch.Domain.EncryptionAtRestOptionsProperty (
        EncryptionAtRestOptionsProperty(..),
        mkEncryptionAtRestOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionAtRestOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-encryptionatrestoptions.html>
    EncryptionAtRestOptionsProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-encryptionatrestoptions.html#cfn-elasticsearch-domain-encryptionatrestoptions-enabled>
                                     enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-encryptionatrestoptions.html#cfn-elasticsearch-domain-encryptionatrestoptions-kmskeyid>
                                     kmsKeyId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionAtRestOptionsProperty ::
  EncryptionAtRestOptionsProperty
mkEncryptionAtRestOptionsProperty
  = EncryptionAtRestOptionsProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing,
       kmsKeyId = Prelude.Nothing}
instance ToResourceProperties EncryptionAtRestOptionsProperty where
  toResourceProperties EncryptionAtRestOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Elasticsearch::Domain.EncryptionAtRestOptions",
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