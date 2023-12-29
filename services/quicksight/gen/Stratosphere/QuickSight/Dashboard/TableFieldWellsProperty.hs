module Stratosphere.QuickSight.Dashboard.TableFieldWellsProperty (
        module Exports, TableFieldWellsProperty(..),
        mkTableFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TableAggregatedFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TableUnaggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data TableFieldWellsProperty
  = TableFieldWellsProperty {tableAggregatedFieldWells :: (Prelude.Maybe TableAggregatedFieldWellsProperty),
                             tableUnaggregatedFieldWells :: (Prelude.Maybe TableUnaggregatedFieldWellsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableFieldWellsProperty :: TableFieldWellsProperty
mkTableFieldWellsProperty
  = TableFieldWellsProperty
      {tableAggregatedFieldWells = Prelude.Nothing,
       tableUnaggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties TableFieldWellsProperty where
  toResourceProperties TableFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.TableFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TableAggregatedFieldWells"
                              Prelude.<$> tableAggregatedFieldWells,
                            (JSON..=) "TableUnaggregatedFieldWells"
                              Prelude.<$> tableUnaggregatedFieldWells])}
instance JSON.ToJSON TableFieldWellsProperty where
  toJSON TableFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TableAggregatedFieldWells"
                 Prelude.<$> tableAggregatedFieldWells,
               (JSON..=) "TableUnaggregatedFieldWells"
                 Prelude.<$> tableUnaggregatedFieldWells]))
instance Property "TableAggregatedFieldWells" TableFieldWellsProperty where
  type PropertyType "TableAggregatedFieldWells" TableFieldWellsProperty = TableAggregatedFieldWellsProperty
  set newValue TableFieldWellsProperty {..}
    = TableFieldWellsProperty
        {tableAggregatedFieldWells = Prelude.pure newValue, ..}
instance Property "TableUnaggregatedFieldWells" TableFieldWellsProperty where
  type PropertyType "TableUnaggregatedFieldWells" TableFieldWellsProperty = TableUnaggregatedFieldWellsProperty
  set newValue TableFieldWellsProperty {..}
    = TableFieldWellsProperty
        {tableUnaggregatedFieldWells = Prelude.pure newValue, ..}