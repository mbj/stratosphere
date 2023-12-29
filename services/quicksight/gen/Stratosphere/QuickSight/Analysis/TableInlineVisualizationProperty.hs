module Stratosphere.QuickSight.Analysis.TableInlineVisualizationProperty (
        module Exports, TableInlineVisualizationProperty(..),
        mkTableInlineVisualizationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DataBarsOptionsProperty as Exports
import Stratosphere.ResourceProperties
data TableInlineVisualizationProperty
  = TableInlineVisualizationProperty {dataBars :: (Prelude.Maybe DataBarsOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableInlineVisualizationProperty ::
  TableInlineVisualizationProperty
mkTableInlineVisualizationProperty
  = TableInlineVisualizationProperty {dataBars = Prelude.Nothing}
instance ToResourceProperties TableInlineVisualizationProperty where
  toResourceProperties TableInlineVisualizationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.TableInlineVisualization",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "DataBars" Prelude.<$> dataBars])}
instance JSON.ToJSON TableInlineVisualizationProperty where
  toJSON TableInlineVisualizationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "DataBars" Prelude.<$> dataBars]))
instance Property "DataBars" TableInlineVisualizationProperty where
  type PropertyType "DataBars" TableInlineVisualizationProperty = DataBarsOptionsProperty
  set newValue TableInlineVisualizationProperty {}
    = TableInlineVisualizationProperty
        {dataBars = Prelude.pure newValue, ..}