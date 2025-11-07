module Stratosphere.QuickSight.Dashboard.SankeyDiagramVisualProperty (
        module Exports, SankeyDiagramVisualProperty(..),
        mkSankeyDiagramVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.SankeyDiagramChartConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SankeyDiagramVisualProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-sankeydiagramvisual.html>
    SankeyDiagramVisualProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-sankeydiagramvisual.html#cfn-quicksight-dashboard-sankeydiagramvisual-actions>
                                 actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-sankeydiagramvisual.html#cfn-quicksight-dashboard-sankeydiagramvisual-chartconfiguration>
                                 chartConfiguration :: (Prelude.Maybe SankeyDiagramChartConfigurationProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-sankeydiagramvisual.html#cfn-quicksight-dashboard-sankeydiagramvisual-subtitle>
                                 subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-sankeydiagramvisual.html#cfn-quicksight-dashboard-sankeydiagramvisual-title>
                                 title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-sankeydiagramvisual.html#cfn-quicksight-dashboard-sankeydiagramvisual-visualcontentalttext>
                                 visualContentAltText :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-sankeydiagramvisual.html#cfn-quicksight-dashboard-sankeydiagramvisual-visualid>
                                 visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSankeyDiagramVisualProperty ::
  Value Prelude.Text -> SankeyDiagramVisualProperty
mkSankeyDiagramVisualProperty visualId
  = SankeyDiagramVisualProperty
      {haddock_workaround_ = (), visualId = visualId,
       actions = Prelude.Nothing, chartConfiguration = Prelude.Nothing,
       subtitle = Prelude.Nothing, title = Prelude.Nothing,
       visualContentAltText = Prelude.Nothing}
instance ToResourceProperties SankeyDiagramVisualProperty where
  toResourceProperties SankeyDiagramVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.SankeyDiagramVisual",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VisualId" JSON..= visualId]
                           (Prelude.catMaybes
                              [(JSON..=) "Actions" Prelude.<$> actions,
                               (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                               (JSON..=) "Subtitle" Prelude.<$> subtitle,
                               (JSON..=) "Title" Prelude.<$> title,
                               (JSON..=) "VisualContentAltText"
                                 Prelude.<$> visualContentAltText]))}
instance JSON.ToJSON SankeyDiagramVisualProperty where
  toJSON SankeyDiagramVisualProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VisualId" JSON..= visualId]
              (Prelude.catMaybes
                 [(JSON..=) "Actions" Prelude.<$> actions,
                  (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                  (JSON..=) "Subtitle" Prelude.<$> subtitle,
                  (JSON..=) "Title" Prelude.<$> title,
                  (JSON..=) "VisualContentAltText"
                    Prelude.<$> visualContentAltText])))
instance Property "Actions" SankeyDiagramVisualProperty where
  type PropertyType "Actions" SankeyDiagramVisualProperty = [VisualCustomActionProperty]
  set newValue SankeyDiagramVisualProperty {..}
    = SankeyDiagramVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" SankeyDiagramVisualProperty where
  type PropertyType "ChartConfiguration" SankeyDiagramVisualProperty = SankeyDiagramChartConfigurationProperty
  set newValue SankeyDiagramVisualProperty {..}
    = SankeyDiagramVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "Subtitle" SankeyDiagramVisualProperty where
  type PropertyType "Subtitle" SankeyDiagramVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue SankeyDiagramVisualProperty {..}
    = SankeyDiagramVisualProperty
        {subtitle = Prelude.pure newValue, ..}
instance Property "Title" SankeyDiagramVisualProperty where
  type PropertyType "Title" SankeyDiagramVisualProperty = VisualTitleLabelOptionsProperty
  set newValue SankeyDiagramVisualProperty {..}
    = SankeyDiagramVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualContentAltText" SankeyDiagramVisualProperty where
  type PropertyType "VisualContentAltText" SankeyDiagramVisualProperty = Value Prelude.Text
  set newValue SankeyDiagramVisualProperty {..}
    = SankeyDiagramVisualProperty
        {visualContentAltText = Prelude.pure newValue, ..}
instance Property "VisualId" SankeyDiagramVisualProperty where
  type PropertyType "VisualId" SankeyDiagramVisualProperty = Value Prelude.Text
  set newValue SankeyDiagramVisualProperty {..}
    = SankeyDiagramVisualProperty {visualId = newValue, ..}