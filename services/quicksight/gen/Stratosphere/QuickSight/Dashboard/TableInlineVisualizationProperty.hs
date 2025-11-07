module Stratosphere.QuickSight.Dashboard.TableInlineVisualizationProperty (
        module Exports, TableInlineVisualizationProperty(..),
        mkTableInlineVisualizationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DataBarsOptionsProperty as Exports
import Stratosphere.ResourceProperties
data TableInlineVisualizationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tableinlinevisualization.html>
    TableInlineVisualizationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tableinlinevisualization.html#cfn-quicksight-dashboard-tableinlinevisualization-databars>
                                      dataBars :: (Prelude.Maybe DataBarsOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableInlineVisualizationProperty ::
  TableInlineVisualizationProperty
mkTableInlineVisualizationProperty
  = TableInlineVisualizationProperty
      {haddock_workaround_ = (), dataBars = Prelude.Nothing}
instance ToResourceProperties TableInlineVisualizationProperty where
  toResourceProperties TableInlineVisualizationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.TableInlineVisualization",
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
  set newValue TableInlineVisualizationProperty {..}
    = TableInlineVisualizationProperty
        {dataBars = Prelude.pure newValue, ..}