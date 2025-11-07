module Stratosphere.S3.Bucket.InventoryTableConfigurationProperty (
        module Exports, InventoryTableConfigurationProperty(..),
        mkInventoryTableConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.MetadataTableEncryptionConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InventoryTableConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-inventorytableconfiguration.html>
    InventoryTableConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-inventorytableconfiguration.html#cfn-s3-bucket-inventorytableconfiguration-configurationstate>
                                         configurationState :: (Value Prelude.Text),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-inventorytableconfiguration.html#cfn-s3-bucket-inventorytableconfiguration-encryptionconfiguration>
                                         encryptionConfiguration :: (Prelude.Maybe MetadataTableEncryptionConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-inventorytableconfiguration.html#cfn-s3-bucket-inventorytableconfiguration-tablearn>
                                         tableArn :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-inventorytableconfiguration.html#cfn-s3-bucket-inventorytableconfiguration-tablename>
                                         tableName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInventoryTableConfigurationProperty ::
  Value Prelude.Text -> InventoryTableConfigurationProperty
mkInventoryTableConfigurationProperty configurationState
  = InventoryTableConfigurationProperty
      {haddock_workaround_ = (), configurationState = configurationState,
       encryptionConfiguration = Prelude.Nothing,
       tableArn = Prelude.Nothing, tableName = Prelude.Nothing}
instance ToResourceProperties InventoryTableConfigurationProperty where
  toResourceProperties InventoryTableConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.InventoryTableConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConfigurationState" JSON..= configurationState]
                           (Prelude.catMaybes
                              [(JSON..=) "EncryptionConfiguration"
                                 Prelude.<$> encryptionConfiguration,
                               (JSON..=) "TableArn" Prelude.<$> tableArn,
                               (JSON..=) "TableName" Prelude.<$> tableName]))}
instance JSON.ToJSON InventoryTableConfigurationProperty where
  toJSON InventoryTableConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConfigurationState" JSON..= configurationState]
              (Prelude.catMaybes
                 [(JSON..=) "EncryptionConfiguration"
                    Prelude.<$> encryptionConfiguration,
                  (JSON..=) "TableArn" Prelude.<$> tableArn,
                  (JSON..=) "TableName" Prelude.<$> tableName])))
instance Property "ConfigurationState" InventoryTableConfigurationProperty where
  type PropertyType "ConfigurationState" InventoryTableConfigurationProperty = Value Prelude.Text
  set newValue InventoryTableConfigurationProperty {..}
    = InventoryTableConfigurationProperty
        {configurationState = newValue, ..}
instance Property "EncryptionConfiguration" InventoryTableConfigurationProperty where
  type PropertyType "EncryptionConfiguration" InventoryTableConfigurationProperty = MetadataTableEncryptionConfigurationProperty
  set newValue InventoryTableConfigurationProperty {..}
    = InventoryTableConfigurationProperty
        {encryptionConfiguration = Prelude.pure newValue, ..}
instance Property "TableArn" InventoryTableConfigurationProperty where
  type PropertyType "TableArn" InventoryTableConfigurationProperty = Value Prelude.Text
  set newValue InventoryTableConfigurationProperty {..}
    = InventoryTableConfigurationProperty
        {tableArn = Prelude.pure newValue, ..}
instance Property "TableName" InventoryTableConfigurationProperty where
  type PropertyType "TableName" InventoryTableConfigurationProperty = Value Prelude.Text
  set newValue InventoryTableConfigurationProperty {..}
    = InventoryTableConfigurationProperty
        {tableName = Prelude.pure newValue, ..}