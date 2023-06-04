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
  = SankeyDiagramVisualProperty {actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                                 chartConfiguration :: (Prelude.Maybe SankeyDiagramChartConfigurationProperty),
                                 subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                                 title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                                 visualId :: (Value Prelude.Text)}
mkSankeyDiagramVisualProperty ::
  Value Prelude.Text -> SankeyDiagramVisualProperty
mkSankeyDiagramVisualProperty visualId
  = SankeyDiagramVisualProperty
      {visualId = visualId, actions = Prelude.Nothing,
       chartConfiguration = Prelude.Nothing, subtitle = Prelude.Nothing,
       title = Prelude.Nothing}
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
                               (JSON..=) "Title" Prelude.<$> title]))}
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
                  (JSON..=) "Title" Prelude.<$> title])))
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
instance Property "VisualId" SankeyDiagramVisualProperty where
  type PropertyType "VisualId" SankeyDiagramVisualProperty = Value Prelude.Text
  set newValue SankeyDiagramVisualProperty {..}
    = SankeyDiagramVisualProperty {visualId = newValue, ..}