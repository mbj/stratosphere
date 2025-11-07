module Stratosphere.S3.Bucket.MetadataDestinationProperty (
        MetadataDestinationProperty(..), mkMetadataDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetadataDestinationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metadatadestination.html>
    MetadataDestinationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metadatadestination.html#cfn-s3-bucket-metadatadestination-tablebucketarn>
                                 tableBucketArn :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metadatadestination.html#cfn-s3-bucket-metadatadestination-tablebuckettype>
                                 tableBucketType :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metadatadestination.html#cfn-s3-bucket-metadatadestination-tablenamespace>
                                 tableNamespace :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetadataDestinationProperty ::
  Value Prelude.Text -> MetadataDestinationProperty
mkMetadataDestinationProperty tableBucketType
  = MetadataDestinationProperty
      {haddock_workaround_ = (), tableBucketType = tableBucketType,
       tableBucketArn = Prelude.Nothing, tableNamespace = Prelude.Nothing}
instance ToResourceProperties MetadataDestinationProperty where
  toResourceProperties MetadataDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.MetadataDestination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TableBucketType" JSON..= tableBucketType]
                           (Prelude.catMaybes
                              [(JSON..=) "TableBucketArn" Prelude.<$> tableBucketArn,
                               (JSON..=) "TableNamespace" Prelude.<$> tableNamespace]))}
instance JSON.ToJSON MetadataDestinationProperty where
  toJSON MetadataDestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TableBucketType" JSON..= tableBucketType]
              (Prelude.catMaybes
                 [(JSON..=) "TableBucketArn" Prelude.<$> tableBucketArn,
                  (JSON..=) "TableNamespace" Prelude.<$> tableNamespace])))
instance Property "TableBucketArn" MetadataDestinationProperty where
  type PropertyType "TableBucketArn" MetadataDestinationProperty = Value Prelude.Text
  set newValue MetadataDestinationProperty {..}
    = MetadataDestinationProperty
        {tableBucketArn = Prelude.pure newValue, ..}
instance Property "TableBucketType" MetadataDestinationProperty where
  type PropertyType "TableBucketType" MetadataDestinationProperty = Value Prelude.Text
  set newValue MetadataDestinationProperty {..}
    = MetadataDestinationProperty {tableBucketType = newValue, ..}
instance Property "TableNamespace" MetadataDestinationProperty where
  type PropertyType "TableNamespace" MetadataDestinationProperty = Value Prelude.Text
  set newValue MetadataDestinationProperty {..}
    = MetadataDestinationProperty
        {tableNamespace = Prelude.pure newValue, ..}