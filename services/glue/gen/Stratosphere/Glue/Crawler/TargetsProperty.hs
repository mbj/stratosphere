module Stratosphere.Glue.Crawler.TargetsProperty (
        module Exports, TargetsProperty(..), mkTargetsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.Crawler.CatalogTargetProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Crawler.DynamoDBTargetProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Crawler.JdbcTargetProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Crawler.MongoDBTargetProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Crawler.S3TargetProperty as Exports
import Stratosphere.ResourceProperties
data TargetsProperty
  = TargetsProperty {catalogTargets :: (Prelude.Maybe [CatalogTargetProperty]),
                     dynamoDBTargets :: (Prelude.Maybe [DynamoDBTargetProperty]),
                     jdbcTargets :: (Prelude.Maybe [JdbcTargetProperty]),
                     mongoDBTargets :: (Prelude.Maybe [MongoDBTargetProperty]),
                     s3Targets :: (Prelude.Maybe [S3TargetProperty])}
mkTargetsProperty :: TargetsProperty
mkTargetsProperty
  = TargetsProperty
      {catalogTargets = Prelude.Nothing,
       dynamoDBTargets = Prelude.Nothing, jdbcTargets = Prelude.Nothing,
       mongoDBTargets = Prelude.Nothing, s3Targets = Prelude.Nothing}
instance ToResourceProperties TargetsProperty where
  toResourceProperties TargetsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Crawler.Targets",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CatalogTargets" Prelude.<$> catalogTargets,
                            (JSON..=) "DynamoDBTargets" Prelude.<$> dynamoDBTargets,
                            (JSON..=) "JdbcTargets" Prelude.<$> jdbcTargets,
                            (JSON..=) "MongoDBTargets" Prelude.<$> mongoDBTargets,
                            (JSON..=) "S3Targets" Prelude.<$> s3Targets])}
instance JSON.ToJSON TargetsProperty where
  toJSON TargetsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CatalogTargets" Prelude.<$> catalogTargets,
               (JSON..=) "DynamoDBTargets" Prelude.<$> dynamoDBTargets,
               (JSON..=) "JdbcTargets" Prelude.<$> jdbcTargets,
               (JSON..=) "MongoDBTargets" Prelude.<$> mongoDBTargets,
               (JSON..=) "S3Targets" Prelude.<$> s3Targets]))
instance Property "CatalogTargets" TargetsProperty where
  type PropertyType "CatalogTargets" TargetsProperty = [CatalogTargetProperty]
  set newValue TargetsProperty {..}
    = TargetsProperty {catalogTargets = Prelude.pure newValue, ..}
instance Property "DynamoDBTargets" TargetsProperty where
  type PropertyType "DynamoDBTargets" TargetsProperty = [DynamoDBTargetProperty]
  set newValue TargetsProperty {..}
    = TargetsProperty {dynamoDBTargets = Prelude.pure newValue, ..}
instance Property "JdbcTargets" TargetsProperty where
  type PropertyType "JdbcTargets" TargetsProperty = [JdbcTargetProperty]
  set newValue TargetsProperty {..}
    = TargetsProperty {jdbcTargets = Prelude.pure newValue, ..}
instance Property "MongoDBTargets" TargetsProperty where
  type PropertyType "MongoDBTargets" TargetsProperty = [MongoDBTargetProperty]
  set newValue TargetsProperty {..}
    = TargetsProperty {mongoDBTargets = Prelude.pure newValue, ..}
instance Property "S3Targets" TargetsProperty where
  type PropertyType "S3Targets" TargetsProperty = [S3TargetProperty]
  set newValue TargetsProperty {..}
    = TargetsProperty {s3Targets = Prelude.pure newValue, ..}