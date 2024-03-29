module Stratosphere.QuickSight.Template.SankeyDiagramFieldWellsProperty (
        module Exports, SankeyDiagramFieldWellsProperty(..),
        mkSankeyDiagramFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.SankeyDiagramAggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data SankeyDiagramFieldWellsProperty
  = SankeyDiagramFieldWellsProperty {sankeyDiagramAggregatedFieldWells :: (Prelude.Maybe SankeyDiagramAggregatedFieldWellsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSankeyDiagramFieldWellsProperty ::
  SankeyDiagramFieldWellsProperty
mkSankeyDiagramFieldWellsProperty
  = SankeyDiagramFieldWellsProperty
      {sankeyDiagramAggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties SankeyDiagramFieldWellsProperty where
  toResourceProperties SankeyDiagramFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.SankeyDiagramFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SankeyDiagramAggregatedFieldWells"
                              Prelude.<$> sankeyDiagramAggregatedFieldWells])}
instance JSON.ToJSON SankeyDiagramFieldWellsProperty where
  toJSON SankeyDiagramFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SankeyDiagramAggregatedFieldWells"
                 Prelude.<$> sankeyDiagramAggregatedFieldWells]))
instance Property "SankeyDiagramAggregatedFieldWells" SankeyDiagramFieldWellsProperty where
  type PropertyType "SankeyDiagramAggregatedFieldWells" SankeyDiagramFieldWellsProperty = SankeyDiagramAggregatedFieldWellsProperty
  set newValue SankeyDiagramFieldWellsProperty {}
    = SankeyDiagramFieldWellsProperty
        {sankeyDiagramAggregatedFieldWells = Prelude.pure newValue, ..}