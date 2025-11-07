module Stratosphere.S3.Bucket.JournalTableConfigurationProperty (
        module Exports, JournalTableConfigurationProperty(..),
        mkJournalTableConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.MetadataTableEncryptionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.RecordExpirationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JournalTableConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-journaltableconfiguration.html>
    JournalTableConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-journaltableconfiguration.html#cfn-s3-bucket-journaltableconfiguration-encryptionconfiguration>
                                       encryptionConfiguration :: (Prelude.Maybe MetadataTableEncryptionConfigurationProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-journaltableconfiguration.html#cfn-s3-bucket-journaltableconfiguration-recordexpiration>
                                       recordExpiration :: RecordExpirationProperty,
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-journaltableconfiguration.html#cfn-s3-bucket-journaltableconfiguration-tablearn>
                                       tableArn :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-journaltableconfiguration.html#cfn-s3-bucket-journaltableconfiguration-tablename>
                                       tableName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJournalTableConfigurationProperty ::
  RecordExpirationProperty -> JournalTableConfigurationProperty
mkJournalTableConfigurationProperty recordExpiration
  = JournalTableConfigurationProperty
      {haddock_workaround_ = (), recordExpiration = recordExpiration,
       encryptionConfiguration = Prelude.Nothing,
       tableArn = Prelude.Nothing, tableName = Prelude.Nothing}
instance ToResourceProperties JournalTableConfigurationProperty where
  toResourceProperties JournalTableConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.JournalTableConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RecordExpiration" JSON..= recordExpiration]
                           (Prelude.catMaybes
                              [(JSON..=) "EncryptionConfiguration"
                                 Prelude.<$> encryptionConfiguration,
                               (JSON..=) "TableArn" Prelude.<$> tableArn,
                               (JSON..=) "TableName" Prelude.<$> tableName]))}
instance JSON.ToJSON JournalTableConfigurationProperty where
  toJSON JournalTableConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RecordExpiration" JSON..= recordExpiration]
              (Prelude.catMaybes
                 [(JSON..=) "EncryptionConfiguration"
                    Prelude.<$> encryptionConfiguration,
                  (JSON..=) "TableArn" Prelude.<$> tableArn,
                  (JSON..=) "TableName" Prelude.<$> tableName])))
instance Property "EncryptionConfiguration" JournalTableConfigurationProperty where
  type PropertyType "EncryptionConfiguration" JournalTableConfigurationProperty = MetadataTableEncryptionConfigurationProperty
  set newValue JournalTableConfigurationProperty {..}
    = JournalTableConfigurationProperty
        {encryptionConfiguration = Prelude.pure newValue, ..}
instance Property "RecordExpiration" JournalTableConfigurationProperty where
  type PropertyType "RecordExpiration" JournalTableConfigurationProperty = RecordExpirationProperty
  set newValue JournalTableConfigurationProperty {..}
    = JournalTableConfigurationProperty
        {recordExpiration = newValue, ..}
instance Property "TableArn" JournalTableConfigurationProperty where
  type PropertyType "TableArn" JournalTableConfigurationProperty = Value Prelude.Text
  set newValue JournalTableConfigurationProperty {..}
    = JournalTableConfigurationProperty
        {tableArn = Prelude.pure newValue, ..}
instance Property "TableName" JournalTableConfigurationProperty where
  type PropertyType "TableName" JournalTableConfigurationProperty = Value Prelude.Text
  set newValue JournalTableConfigurationProperty {..}
    = JournalTableConfigurationProperty
        {tableName = Prelude.pure newValue, ..}