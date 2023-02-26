module Stratosphere.QuickSight.DataSet.TransformOperationProperty (
        module Exports, TransformOperationProperty(..),
        mkTransformOperationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.CastColumnTypeOperationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.CreateColumnsOperationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.FilterOperationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.ProjectOperationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.RenameColumnOperationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.TagColumnOperationProperty as Exports
import Stratosphere.ResourceProperties
data TransformOperationProperty
  = TransformOperationProperty {castColumnTypeOperation :: (Prelude.Maybe CastColumnTypeOperationProperty),
                                createColumnsOperation :: (Prelude.Maybe CreateColumnsOperationProperty),
                                filterOperation :: (Prelude.Maybe FilterOperationProperty),
                                projectOperation :: (Prelude.Maybe ProjectOperationProperty),
                                renameColumnOperation :: (Prelude.Maybe RenameColumnOperationProperty),
                                tagColumnOperation :: (Prelude.Maybe TagColumnOperationProperty)}
mkTransformOperationProperty :: TransformOperationProperty
mkTransformOperationProperty
  = TransformOperationProperty
      {castColumnTypeOperation = Prelude.Nothing,
       createColumnsOperation = Prelude.Nothing,
       filterOperation = Prelude.Nothing,
       projectOperation = Prelude.Nothing,
       renameColumnOperation = Prelude.Nothing,
       tagColumnOperation = Prelude.Nothing}
instance ToResourceProperties TransformOperationProperty where
  toResourceProperties TransformOperationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.TransformOperation",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CastColumnTypeOperation"
                              Prelude.<$> castColumnTypeOperation,
                            (JSON..=) "CreateColumnsOperation"
                              Prelude.<$> createColumnsOperation,
                            (JSON..=) "FilterOperation" Prelude.<$> filterOperation,
                            (JSON..=) "ProjectOperation" Prelude.<$> projectOperation,
                            (JSON..=) "RenameColumnOperation"
                              Prelude.<$> renameColumnOperation,
                            (JSON..=) "TagColumnOperation" Prelude.<$> tagColumnOperation])}
instance JSON.ToJSON TransformOperationProperty where
  toJSON TransformOperationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CastColumnTypeOperation"
                 Prelude.<$> castColumnTypeOperation,
               (JSON..=) "CreateColumnsOperation"
                 Prelude.<$> createColumnsOperation,
               (JSON..=) "FilterOperation" Prelude.<$> filterOperation,
               (JSON..=) "ProjectOperation" Prelude.<$> projectOperation,
               (JSON..=) "RenameColumnOperation"
                 Prelude.<$> renameColumnOperation,
               (JSON..=) "TagColumnOperation" Prelude.<$> tagColumnOperation]))
instance Property "CastColumnTypeOperation" TransformOperationProperty where
  type PropertyType "CastColumnTypeOperation" TransformOperationProperty = CastColumnTypeOperationProperty
  set newValue TransformOperationProperty {..}
    = TransformOperationProperty
        {castColumnTypeOperation = Prelude.pure newValue, ..}
instance Property "CreateColumnsOperation" TransformOperationProperty where
  type PropertyType "CreateColumnsOperation" TransformOperationProperty = CreateColumnsOperationProperty
  set newValue TransformOperationProperty {..}
    = TransformOperationProperty
        {createColumnsOperation = Prelude.pure newValue, ..}
instance Property "FilterOperation" TransformOperationProperty where
  type PropertyType "FilterOperation" TransformOperationProperty = FilterOperationProperty
  set newValue TransformOperationProperty {..}
    = TransformOperationProperty
        {filterOperation = Prelude.pure newValue, ..}
instance Property "ProjectOperation" TransformOperationProperty where
  type PropertyType "ProjectOperation" TransformOperationProperty = ProjectOperationProperty
  set newValue TransformOperationProperty {..}
    = TransformOperationProperty
        {projectOperation = Prelude.pure newValue, ..}
instance Property "RenameColumnOperation" TransformOperationProperty where
  type PropertyType "RenameColumnOperation" TransformOperationProperty = RenameColumnOperationProperty
  set newValue TransformOperationProperty {..}
    = TransformOperationProperty
        {renameColumnOperation = Prelude.pure newValue, ..}
instance Property "TagColumnOperation" TransformOperationProperty where
  type PropertyType "TagColumnOperation" TransformOperationProperty = TagColumnOperationProperty
  set newValue TransformOperationProperty {..}
    = TransformOperationProperty
        {tagColumnOperation = Prelude.pure newValue, ..}