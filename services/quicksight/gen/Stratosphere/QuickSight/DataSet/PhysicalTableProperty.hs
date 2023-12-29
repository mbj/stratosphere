module Stratosphere.QuickSight.DataSet.PhysicalTableProperty (
        module Exports, PhysicalTableProperty(..), mkPhysicalTableProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.CustomSqlProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.RelationalTableProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.S3SourceProperty as Exports
import Stratosphere.ResourceProperties
data PhysicalTableProperty
  = PhysicalTableProperty {customSql :: (Prelude.Maybe CustomSqlProperty),
                           relationalTable :: (Prelude.Maybe RelationalTableProperty),
                           s3Source :: (Prelude.Maybe S3SourceProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPhysicalTableProperty :: PhysicalTableProperty
mkPhysicalTableProperty
  = PhysicalTableProperty
      {customSql = Prelude.Nothing, relationalTable = Prelude.Nothing,
       s3Source = Prelude.Nothing}
instance ToResourceProperties PhysicalTableProperty where
  toResourceProperties PhysicalTableProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.PhysicalTable",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomSql" Prelude.<$> customSql,
                            (JSON..=) "RelationalTable" Prelude.<$> relationalTable,
                            (JSON..=) "S3Source" Prelude.<$> s3Source])}
instance JSON.ToJSON PhysicalTableProperty where
  toJSON PhysicalTableProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomSql" Prelude.<$> customSql,
               (JSON..=) "RelationalTable" Prelude.<$> relationalTable,
               (JSON..=) "S3Source" Prelude.<$> s3Source]))
instance Property "CustomSql" PhysicalTableProperty where
  type PropertyType "CustomSql" PhysicalTableProperty = CustomSqlProperty
  set newValue PhysicalTableProperty {..}
    = PhysicalTableProperty {customSql = Prelude.pure newValue, ..}
instance Property "RelationalTable" PhysicalTableProperty where
  type PropertyType "RelationalTable" PhysicalTableProperty = RelationalTableProperty
  set newValue PhysicalTableProperty {..}
    = PhysicalTableProperty
        {relationalTable = Prelude.pure newValue, ..}
instance Property "S3Source" PhysicalTableProperty where
  type PropertyType "S3Source" PhysicalTableProperty = S3SourceProperty
  set newValue PhysicalTableProperty {..}
    = PhysicalTableProperty {s3Source = Prelude.pure newValue, ..}