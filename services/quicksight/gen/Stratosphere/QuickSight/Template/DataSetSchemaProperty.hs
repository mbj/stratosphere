module Stratosphere.QuickSight.Template.DataSetSchemaProperty (
        module Exports, DataSetSchemaProperty(..), mkDataSetSchemaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnSchemaProperty as Exports
import Stratosphere.ResourceProperties
data DataSetSchemaProperty
  = DataSetSchemaProperty {columnSchemaList :: (Prelude.Maybe [ColumnSchemaProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSetSchemaProperty :: DataSetSchemaProperty
mkDataSetSchemaProperty
  = DataSetSchemaProperty {columnSchemaList = Prelude.Nothing}
instance ToResourceProperties DataSetSchemaProperty where
  toResourceProperties DataSetSchemaProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.DataSetSchema",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ColumnSchemaList" Prelude.<$> columnSchemaList])}
instance JSON.ToJSON DataSetSchemaProperty where
  toJSON DataSetSchemaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ColumnSchemaList" Prelude.<$> columnSchemaList]))
instance Property "ColumnSchemaList" DataSetSchemaProperty where
  type PropertyType "ColumnSchemaList" DataSetSchemaProperty = [ColumnSchemaProperty]
  set newValue DataSetSchemaProperty {}
    = DataSetSchemaProperty
        {columnSchemaList = Prelude.pure newValue, ..}