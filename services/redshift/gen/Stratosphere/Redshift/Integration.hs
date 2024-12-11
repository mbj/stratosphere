module Stratosphere.Redshift.Integration (
        Integration(..), mkIntegration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Integration
  = Integration {additionalEncryptionContext :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                 integrationName :: (Prelude.Maybe (Value Prelude.Text)),
                 kMSKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                 sourceArn :: (Value Prelude.Text),
                 tags :: (Prelude.Maybe [Tag]),
                 targetArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIntegration ::
  Value Prelude.Text -> Value Prelude.Text -> Integration
mkIntegration sourceArn targetArn
  = Integration
      {sourceArn = sourceArn, targetArn = targetArn,
       additionalEncryptionContext = Prelude.Nothing,
       integrationName = Prelude.Nothing, kMSKeyId = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Integration where
  toResourceProperties Integration {..}
    = ResourceProperties
        {awsType = "AWS::Redshift::Integration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SourceArn" JSON..= sourceArn, "TargetArn" JSON..= targetArn]
                           (Prelude.catMaybes
                              [(JSON..=) "AdditionalEncryptionContext"
                                 Prelude.<$> additionalEncryptionContext,
                               (JSON..=) "IntegrationName" Prelude.<$> integrationName,
                               (JSON..=) "KMSKeyId" Prelude.<$> kMSKeyId,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Integration where
  toJSON Integration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SourceArn" JSON..= sourceArn, "TargetArn" JSON..= targetArn]
              (Prelude.catMaybes
                 [(JSON..=) "AdditionalEncryptionContext"
                    Prelude.<$> additionalEncryptionContext,
                  (JSON..=) "IntegrationName" Prelude.<$> integrationName,
                  (JSON..=) "KMSKeyId" Prelude.<$> kMSKeyId,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AdditionalEncryptionContext" Integration where
  type PropertyType "AdditionalEncryptionContext" Integration = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Integration {..}
    = Integration
        {additionalEncryptionContext = Prelude.pure newValue, ..}
instance Property "IntegrationName" Integration where
  type PropertyType "IntegrationName" Integration = Value Prelude.Text
  set newValue Integration {..}
    = Integration {integrationName = Prelude.pure newValue, ..}
instance Property "KMSKeyId" Integration where
  type PropertyType "KMSKeyId" Integration = Value Prelude.Text
  set newValue Integration {..}
    = Integration {kMSKeyId = Prelude.pure newValue, ..}
instance Property "SourceArn" Integration where
  type PropertyType "SourceArn" Integration = Value Prelude.Text
  set newValue Integration {..}
    = Integration {sourceArn = newValue, ..}
instance Property "Tags" Integration where
  type PropertyType "Tags" Integration = [Tag]
  set newValue Integration {..}
    = Integration {tags = Prelude.pure newValue, ..}
instance Property "TargetArn" Integration where
  type PropertyType "TargetArn" Integration = Value Prelude.Text
  set newValue Integration {..}
    = Integration {targetArn = newValue, ..}