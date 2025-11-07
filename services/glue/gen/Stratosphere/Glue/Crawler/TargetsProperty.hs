module Stratosphere.Glue.Crawler.TargetsProperty (
        module Exports, TargetsProperty(..), mkTargetsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.Crawler.CatalogTargetProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Crawler.DeltaTargetProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Crawler.DynamoDBTargetProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Crawler.HudiTargetProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Crawler.IcebergTargetProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Crawler.JdbcTargetProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Crawler.MongoDBTargetProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Crawler.S3TargetProperty as Exports
import Stratosphere.ResourceProperties
data TargetsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html>
    TargetsProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html#cfn-glue-crawler-targets-catalogtargets>
                     catalogTargets :: (Prelude.Maybe [CatalogTargetProperty]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html#cfn-glue-crawler-targets-deltatargets>
                     deltaTargets :: (Prelude.Maybe [DeltaTargetProperty]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html#cfn-glue-crawler-targets-dynamodbtargets>
                     dynamoDBTargets :: (Prelude.Maybe [DynamoDBTargetProperty]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html#cfn-glue-crawler-targets-huditargets>
                     hudiTargets :: (Prelude.Maybe [HudiTargetProperty]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html#cfn-glue-crawler-targets-icebergtargets>
                     icebergTargets :: (Prelude.Maybe [IcebergTargetProperty]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html#cfn-glue-crawler-targets-jdbctargets>
                     jdbcTargets :: (Prelude.Maybe [JdbcTargetProperty]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html#cfn-glue-crawler-targets-mongodbtargets>
                     mongoDBTargets :: (Prelude.Maybe [MongoDBTargetProperty]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html#cfn-glue-crawler-targets-s3targets>
                     s3Targets :: (Prelude.Maybe [S3TargetProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetsProperty :: TargetsProperty
mkTargetsProperty
  = TargetsProperty
      {haddock_workaround_ = (), catalogTargets = Prelude.Nothing,
       deltaTargets = Prelude.Nothing, dynamoDBTargets = Prelude.Nothing,
       hudiTargets = Prelude.Nothing, icebergTargets = Prelude.Nothing,
       jdbcTargets = Prelude.Nothing, mongoDBTargets = Prelude.Nothing,
       s3Targets = Prelude.Nothing}
instance ToResourceProperties TargetsProperty where
  toResourceProperties TargetsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Crawler.Targets",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CatalogTargets" Prelude.<$> catalogTargets,
                            (JSON..=) "DeltaTargets" Prelude.<$> deltaTargets,
                            (JSON..=) "DynamoDBTargets" Prelude.<$> dynamoDBTargets,
                            (JSON..=) "HudiTargets" Prelude.<$> hudiTargets,
                            (JSON..=) "IcebergTargets" Prelude.<$> icebergTargets,
                            (JSON..=) "JdbcTargets" Prelude.<$> jdbcTargets,
                            (JSON..=) "MongoDBTargets" Prelude.<$> mongoDBTargets,
                            (JSON..=) "S3Targets" Prelude.<$> s3Targets])}
instance JSON.ToJSON TargetsProperty where
  toJSON TargetsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CatalogTargets" Prelude.<$> catalogTargets,
               (JSON..=) "DeltaTargets" Prelude.<$> deltaTargets,
               (JSON..=) "DynamoDBTargets" Prelude.<$> dynamoDBTargets,
               (JSON..=) "HudiTargets" Prelude.<$> hudiTargets,
               (JSON..=) "IcebergTargets" Prelude.<$> icebergTargets,
               (JSON..=) "JdbcTargets" Prelude.<$> jdbcTargets,
               (JSON..=) "MongoDBTargets" Prelude.<$> mongoDBTargets,
               (JSON..=) "S3Targets" Prelude.<$> s3Targets]))
instance Property "CatalogTargets" TargetsProperty where
  type PropertyType "CatalogTargets" TargetsProperty = [CatalogTargetProperty]
  set newValue TargetsProperty {..}
    = TargetsProperty {catalogTargets = Prelude.pure newValue, ..}
instance Property "DeltaTargets" TargetsProperty where
  type PropertyType "DeltaTargets" TargetsProperty = [DeltaTargetProperty]
  set newValue TargetsProperty {..}
    = TargetsProperty {deltaTargets = Prelude.pure newValue, ..}
instance Property "DynamoDBTargets" TargetsProperty where
  type PropertyType "DynamoDBTargets" TargetsProperty = [DynamoDBTargetProperty]
  set newValue TargetsProperty {..}
    = TargetsProperty {dynamoDBTargets = Prelude.pure newValue, ..}
instance Property "HudiTargets" TargetsProperty where
  type PropertyType "HudiTargets" TargetsProperty = [HudiTargetProperty]
  set newValue TargetsProperty {..}
    = TargetsProperty {hudiTargets = Prelude.pure newValue, ..}
instance Property "IcebergTargets" TargetsProperty where
  type PropertyType "IcebergTargets" TargetsProperty = [IcebergTargetProperty]
  set newValue TargetsProperty {..}
    = TargetsProperty {icebergTargets = Prelude.pure newValue, ..}
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