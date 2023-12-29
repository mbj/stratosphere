module Stratosphere.QuickSight.Dashboard.FilledMapFieldWellsProperty (
        module Exports, FilledMapFieldWellsProperty(..),
        mkFilledMapFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FilledMapAggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data FilledMapFieldWellsProperty
  = FilledMapFieldWellsProperty {filledMapAggregatedFieldWells :: (Prelude.Maybe FilledMapAggregatedFieldWellsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilledMapFieldWellsProperty :: FilledMapFieldWellsProperty
mkFilledMapFieldWellsProperty
  = FilledMapFieldWellsProperty
      {filledMapAggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties FilledMapFieldWellsProperty where
  toResourceProperties FilledMapFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.FilledMapFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FilledMapAggregatedFieldWells"
                              Prelude.<$> filledMapAggregatedFieldWells])}
instance JSON.ToJSON FilledMapFieldWellsProperty where
  toJSON FilledMapFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FilledMapAggregatedFieldWells"
                 Prelude.<$> filledMapAggregatedFieldWells]))
instance Property "FilledMapAggregatedFieldWells" FilledMapFieldWellsProperty where
  type PropertyType "FilledMapAggregatedFieldWells" FilledMapFieldWellsProperty = FilledMapAggregatedFieldWellsProperty
  set newValue FilledMapFieldWellsProperty {}
    = FilledMapFieldWellsProperty
        {filledMapAggregatedFieldWells = Prelude.pure newValue, ..}