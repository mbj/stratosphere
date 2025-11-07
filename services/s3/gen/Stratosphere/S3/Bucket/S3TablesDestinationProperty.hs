module Stratosphere.S3.Bucket.S3TablesDestinationProperty (
        S3TablesDestinationProperty(..), mkS3TablesDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3TablesDestinationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-s3tablesdestination.html>
    S3TablesDestinationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-s3tablesdestination.html#cfn-s3-bucket-s3tablesdestination-tablearn>
                                 tableArn :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-s3tablesdestination.html#cfn-s3-bucket-s3tablesdestination-tablebucketarn>
                                 tableBucketArn :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-s3tablesdestination.html#cfn-s3-bucket-s3tablesdestination-tablename>
                                 tableName :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-s3tablesdestination.html#cfn-s3-bucket-s3tablesdestination-tablenamespace>
                                 tableNamespace :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3TablesDestinationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> S3TablesDestinationProperty
mkS3TablesDestinationProperty tableBucketArn tableName
  = S3TablesDestinationProperty
      {haddock_workaround_ = (), tableBucketArn = tableBucketArn,
       tableName = tableName, tableArn = Prelude.Nothing,
       tableNamespace = Prelude.Nothing}
instance ToResourceProperties S3TablesDestinationProperty where
  toResourceProperties S3TablesDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.S3TablesDestination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TableBucketArn" JSON..= tableBucketArn,
                            "TableName" JSON..= tableName]
                           (Prelude.catMaybes
                              [(JSON..=) "TableArn" Prelude.<$> tableArn,
                               (JSON..=) "TableNamespace" Prelude.<$> tableNamespace]))}
instance JSON.ToJSON S3TablesDestinationProperty where
  toJSON S3TablesDestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TableBucketArn" JSON..= tableBucketArn,
               "TableName" JSON..= tableName]
              (Prelude.catMaybes
                 [(JSON..=) "TableArn" Prelude.<$> tableArn,
                  (JSON..=) "TableNamespace" Prelude.<$> tableNamespace])))
instance Property "TableArn" S3TablesDestinationProperty where
  type PropertyType "TableArn" S3TablesDestinationProperty = Value Prelude.Text
  set newValue S3TablesDestinationProperty {..}
    = S3TablesDestinationProperty
        {tableArn = Prelude.pure newValue, ..}
instance Property "TableBucketArn" S3TablesDestinationProperty where
  type PropertyType "TableBucketArn" S3TablesDestinationProperty = Value Prelude.Text
  set newValue S3TablesDestinationProperty {..}
    = S3TablesDestinationProperty {tableBucketArn = newValue, ..}
instance Property "TableName" S3TablesDestinationProperty where
  type PropertyType "TableName" S3TablesDestinationProperty = Value Prelude.Text
  set newValue S3TablesDestinationProperty {..}
    = S3TablesDestinationProperty {tableName = newValue, ..}
instance Property "TableNamespace" S3TablesDestinationProperty where
  type PropertyType "TableNamespace" S3TablesDestinationProperty = Value Prelude.Text
  set newValue S3TablesDestinationProperty {..}
    = S3TablesDestinationProperty
        {tableNamespace = Prelude.pure newValue, ..}