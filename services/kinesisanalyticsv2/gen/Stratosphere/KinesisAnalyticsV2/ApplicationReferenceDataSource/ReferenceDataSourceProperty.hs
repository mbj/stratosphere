module Stratosphere.KinesisAnalyticsV2.ApplicationReferenceDataSource.ReferenceDataSourceProperty (
        module Exports, ReferenceDataSourceProperty(..),
        mkReferenceDataSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.ApplicationReferenceDataSource.ReferenceSchemaProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.ApplicationReferenceDataSource.S3ReferenceDataSourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReferenceDataSourceProperty
  = ReferenceDataSourceProperty {referenceSchema :: ReferenceSchemaProperty,
                                 s3ReferenceDataSource :: (Prelude.Maybe S3ReferenceDataSourceProperty),
                                 tableName :: (Prelude.Maybe (Value Prelude.Text))}
mkReferenceDataSourceProperty ::
  ReferenceSchemaProperty -> ReferenceDataSourceProperty
mkReferenceDataSourceProperty referenceSchema
  = ReferenceDataSourceProperty
      {referenceSchema = referenceSchema,
       s3ReferenceDataSource = Prelude.Nothing,
       tableName = Prelude.Nothing}
instance ToResourceProperties ReferenceDataSourceProperty where
  toResourceProperties ReferenceDataSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource.ReferenceDataSource",
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