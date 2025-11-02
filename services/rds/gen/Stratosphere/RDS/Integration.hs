module Stratosphere.RDS.Integration (
        Integration(..), mkIntegration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Integration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-integration.html>
    Integration {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-integration.html#cfn-rds-integration-additionalencryptioncontext>
                 additionalEncryptionContext :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-integration.html#cfn-rds-integration-datafilter>
                 dataFilter :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-integration.html#cfn-rds-integration-description>
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-integration.html#cfn-rds-integration-integrationname>
                 integrationName :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-integration.html#cfn-rds-integration-kmskeyid>
                 kMSKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-integration.html#cfn-rds-integration-sourcearn>
                 sourceArn :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-integration.html#cfn-rds-integration-tags>
                 tags :: (Prelude.Maybe [Tag]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-integration.html#cfn-rds-integration-targetarn>
                 targetArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIntegration ::
  Value Prelude.Text -> Value Prelude.Text -> Integration
mkIntegration sourceArn targetArn
  = Integration
      {haddock_workaround_ = (), sourceArn = sourceArn,
       targetArn = targetArn,
       additionalEncryptionContext = Prelude.Nothing,
       dataFilter = Prelude.Nothing, description = Prelude.Nothing,
       integrationName = Prelude.Nothing, kMSKeyId = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Integration where
  toResourceProperties Integration {..}
    = ResourceProperties
        {awsType = "AWS::RDS::Integration", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SourceArn" JSON..= sourceArn, "TargetArn" JSON..= targetArn]
                           (Prelude.catMaybes
                              [(JSON..=) "AdditionalEncryptionContext"
                                 Prelude.<$> additionalEncryptionContext,
                               (JSON..=) "DataFilter" Prelude.<$> dataFilter,
                               (JSON..=) "Description" Prelude.<$> description,
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
                  (JSON..=) "DataFilter" Prelude.<$> dataFilter,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "IntegrationName" Prelude.<$> integrationName,
                  (JSON..=) "KMSKeyId" Prelude.<$> kMSKeyId,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AdditionalEncryptionContext" Integration where
  type PropertyType "AdditionalEncryptionContext" Integration = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Integration {..}
    = Integration
        {additionalEncryptionContext = Prelude.pure newValue, ..}
instance Property "DataFilter" Integration where
  type PropertyType "DataFilter" Integration = Value Prelude.Text
  set newValue Integration {..}
    = Integration {dataFilter = Prelude.pure newValue, ..}
instance Property "Description" Integration where
  type PropertyType "Description" Integration = Value Prelude.Text
  set newValue Integration {..}
    = Integration {description = Prelude.pure newValue, ..}
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