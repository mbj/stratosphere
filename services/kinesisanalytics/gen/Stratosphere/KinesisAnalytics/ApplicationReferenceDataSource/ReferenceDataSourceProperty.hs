module Stratosphere.KinesisAnalytics.ApplicationReferenceDataSource.ReferenceDataSourceProperty (
        module Exports, ReferenceDataSourceProperty(..),
        mkReferenceDataSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalytics.ApplicationReferenceDataSource.ReferenceSchemaProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisAnalytics.ApplicationReferenceDataSource.S3ReferenceDataSourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReferenceDataSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referencedatasource.html>
    ReferenceDataSourceProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-referencedatasource-referenceschema>
                                 referenceSchema :: ReferenceSchemaProperty,
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-referencedatasource-s3referencedatasource>
                                 s3ReferenceDataSource :: (Prelude.Maybe S3ReferenceDataSourceProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-referencedatasource-tablename>
                                 tableName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReferenceDataSourceProperty ::
  ReferenceSchemaProperty -> ReferenceDataSourceProperty
mkReferenceDataSourceProperty referenceSchema
  = ReferenceDataSourceProperty
      {haddock_workaround_ = (), referenceSchema = referenceSchema,
       s3ReferenceDataSource = Prelude.Nothing,
       tableName = Prelude.Nothing}
instance ToResourceProperties ReferenceDataSourceProperty where
  toResourceProperties ReferenceDataSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalytics::ApplicationReferenceDataSource.ReferenceDataSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ReferenceSchema" JSON..= referenceSchema]
                           (Prelude.catMaybes
                              [(JSON..=) "S3ReferenceDataSource"
                                 Prelude.<$> s3ReferenceDataSource,
                               (JSON..=) "TableName" Prelude.<$> tableName]))}
instance JSON.ToJSON ReferenceDataSourceProperty where
  toJSON ReferenceDataSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ReferenceSchema" JSON..= referenceSchema]
              (Prelude.catMaybes
                 [(JSON..=) "S3ReferenceDataSource"
                    Prelude.<$> s3ReferenceDataSource,
                  (JSON..=) "TableName" Prelude.<$> tableName])))
instance Property "ReferenceSchema" ReferenceDataSourceProperty where
  type PropertyType "ReferenceSchema" ReferenceDataSourceProperty = ReferenceSchemaProperty
  set newValue ReferenceDataSourceProperty {..}
    = ReferenceDataSourceProperty {referenceSchema = newValue, ..}
instance Property "S3ReferenceDataSource" ReferenceDataSourceProperty where
  type PropertyType "S3ReferenceDataSource" ReferenceDataSourceProperty = S3ReferenceDataSourceProperty
  set newValue ReferenceDataSourceProperty {..}
    = ReferenceDataSourceProperty
        {s3ReferenceDataSource = Prelude.pure newValue, ..}
instance Property "TableName" ReferenceDataSourceProperty where
  type PropertyType "TableName" ReferenceDataSourceProperty = Value Prelude.Text
  set newValue ReferenceDataSourceProperty {..}
    = ReferenceDataSourceProperty
        {tableName = Prelude.pure newValue, ..}