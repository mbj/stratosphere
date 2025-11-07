module Stratosphere.QuickSight.Analysis.FilledMapFieldWellsProperty (
        module Exports, FilledMapFieldWellsProperty(..),
        mkFilledMapFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FilledMapAggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data FilledMapFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filledmapfieldwells.html>
    FilledMapFieldWellsProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filledmapfieldwells.html#cfn-quicksight-analysis-filledmapfieldwells-filledmapaggregatedfieldwells>
                                 filledMapAggregatedFieldWells :: (Prelude.Maybe FilledMapAggregatedFieldWellsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilledMapFieldWellsProperty :: FilledMapFieldWellsProperty
mkFilledMapFieldWellsProperty
  = FilledMapFieldWellsProperty
      {haddock_workaround_ = (),
       filledMapAggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties FilledMapFieldWellsProperty where
  toResourceProperties FilledMapFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.FilledMapFieldWells",
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
  set newValue FilledMapFieldWellsProperty {..}
    = FilledMapFieldWellsProperty
        {filledMapAggregatedFieldWells = Prelude.pure newValue, ..}