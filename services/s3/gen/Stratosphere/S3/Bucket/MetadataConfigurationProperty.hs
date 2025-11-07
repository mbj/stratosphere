module Stratosphere.S3.Bucket.MetadataConfigurationProperty (
        module Exports, MetadataConfigurationProperty(..),
        mkMetadataConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.InventoryTableConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.JournalTableConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.MetadataDestinationProperty as Exports
import Stratosphere.ResourceProperties
data MetadataConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metadataconfiguration.html>
    MetadataConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metadataconfiguration.html#cfn-s3-bucket-metadataconfiguration-destination>
                                   destination :: (Prelude.Maybe MetadataDestinationProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metadataconfiguration.html#cfn-s3-bucket-metadataconfiguration-inventorytableconfiguration>
                                   inventoryTableConfiguration :: (Prelude.Maybe InventoryTableConfigurationProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metadataconfiguration.html#cfn-s3-bucket-metadataconfiguration-journaltableconfiguration>
                                   journalTableConfiguration :: JournalTableConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetadataConfigurationProperty ::
  JournalTableConfigurationProperty -> MetadataConfigurationProperty
mkMetadataConfigurationProperty journalTableConfiguration
  = MetadataConfigurationProperty
      {haddock_workaround_ = (),
       journalTableConfiguration = journalTableConfiguration,
       destination = Prelude.Nothing,
       inventoryTableConfiguration = Prelude.Nothing}
instance ToResourceProperties MetadataConfigurationProperty where
  toResourceProperties MetadataConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.MetadataConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["JournalTableConfiguration" JSON..= journalTableConfiguration]
                           (Prelude.catMaybes
                              [(JSON..=) "Destination" Prelude.<$> destination,
                               (JSON..=) "InventoryTableConfiguration"
                                 Prelude.<$> inventoryTableConfiguration]))}
instance JSON.ToJSON MetadataConfigurationProperty where
  toJSON MetadataConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["JournalTableConfiguration" JSON..= journalTableConfiguration]
              (Prelude.catMaybes
                 [(JSON..=) "Destination" Prelude.<$> destination,
                  (JSON..=) "InventoryTableConfiguration"
                    Prelude.<$> inventoryTableConfiguration])))
instance Property "Destination" MetadataConfigurationProperty where
  type PropertyType "Destination" MetadataConfigurationProperty = MetadataDestinationProperty
  set newValue MetadataConfigurationProperty {..}
    = MetadataConfigurationProperty
        {destination = Prelude.pure newValue, ..}
instance Property "InventoryTableConfiguration" MetadataConfigurationProperty where
  type PropertyType "InventoryTableConfiguration" MetadataConfigurationProperty = InventoryTableConfigurationProperty
  set newValue MetadataConfigurationProperty {..}
    = MetadataConfigurationProperty
        {inventoryTableConfiguration = Prelude.pure newValue, ..}
instance Property "JournalTableConfiguration" MetadataConfigurationProperty where
  type PropertyType "JournalTableConfiguration" MetadataConfigurationProperty = JournalTableConfigurationProperty
  set newValue MetadataConfigurationProperty {..}
    = MetadataConfigurationProperty
        {journalTableConfiguration = newValue, ..}