module Stratosphere.QuickSight.Analysis.TreeMapFieldWellsProperty (
        module Exports, TreeMapFieldWellsProperty(..),
        mkTreeMapFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TreeMapAggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data TreeMapFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-treemapfieldwells.html>
    TreeMapFieldWellsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-treemapfieldwells.html#cfn-quicksight-analysis-treemapfieldwells-treemapaggregatedfieldwells>
                               treeMapAggregatedFieldWells :: (Prelude.Maybe TreeMapAggregatedFieldWellsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTreeMapFieldWellsProperty :: TreeMapFieldWellsProperty
mkTreeMapFieldWellsProperty
  = TreeMapFieldWellsProperty
      {haddock_workaround_ = (),
       treeMapAggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties TreeMapFieldWellsProperty where
  toResourceProperties TreeMapFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.TreeMapFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TreeMapAggregatedFieldWells"
                              Prelude.<$> treeMapAggregatedFieldWells])}
instance JSON.ToJSON TreeMapFieldWellsProperty where
  toJSON TreeMapFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TreeMapAggregatedFieldWells"
                 Prelude.<$> treeMapAggregatedFieldWells]))
instance Property "TreeMapAggregatedFieldWells" TreeMapFieldWellsProperty where
  type PropertyType "TreeMapAggregatedFieldWells" TreeMapFieldWellsProperty = TreeMapAggregatedFieldWellsProperty
  set newValue TreeMapFieldWellsProperty {..}
    = TreeMapFieldWellsProperty
        {treeMapAggregatedFieldWells = Prelude.pure newValue, ..}