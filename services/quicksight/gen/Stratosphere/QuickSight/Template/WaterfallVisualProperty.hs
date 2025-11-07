module Stratosphere.QuickSight.Template.WaterfallVisualProperty (
        module Exports, WaterfallVisualProperty(..),
        mkWaterfallVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualTitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.WaterfallChartConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WaterfallVisualProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallvisual.html>
    WaterfallVisualProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallvisual.html#cfn-quicksight-template-waterfallvisual-actions>
                             actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallvisual.html#cfn-quicksight-template-waterfallvisual-chartconfiguration>
                             chartConfiguration :: (Prelude.Maybe WaterfallChartConfigurationProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallvisual.html#cfn-quicksight-template-waterfallvisual-columnhierarchies>
                             columnHierarchies :: (Prelude.Maybe [ColumnHierarchyProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallvisual.html#cfn-quicksight-template-waterfallvisual-subtitle>
                             subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallvisual.html#cfn-quicksight-template-waterfallvisual-title>
                             title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallvisual.html#cfn-quicksight-template-waterfallvisual-visualcontentalttext>
                             visualContentAltText :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallvisual.html#cfn-quicksight-template-waterfallvisual-visualid>
                             visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWaterfallVisualProperty ::
  Value Prelude.Text -> WaterfallVisualProperty
mkWaterfallVisualProperty visualId
  = WaterfallVisualProperty
      {haddock_workaround_ = (), visualId = visualId,
       actions = Prelude.Nothing, chartConfiguration = Prelude.Nothing,
       columnHierarchies = Prelude.Nothing, subtitle = Prelude.Nothing,
       title = Prelude.Nothing, visualContentAltText = Prelude.Nothing}
instance ToResourceProperties WaterfallVisualProperty where
  toResourceProperties WaterfallVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.WaterfallVisual",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VisualId" JSON..= visualId]
                           (Prelude.catMaybes
                              [(JSON..=) "Actions" Prelude.<$> actions,
                               (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                               (JSON..=) "ColumnHierarchies" Prelude.<$> columnHierarchies,
                               (JSON..=) "Subtitle" Prelude.<$> subtitle,
                               (JSON..=) "Title" Prelude.<$> title,
                               (JSON..=) "VisualContentAltText"
                                 Prelude.<$> visualContentAltText]))}
instance JSON.ToJSON WaterfallVisualProperty where
  toJSON WaterfallVisualProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VisualId" JSON..= visualId]
              (Prelude.catMaybes
                 [(JSON..=) "Actions" Prelude.<$> actions,
                  (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                  (JSON..=) "ColumnHierarchies" Prelude.<$> columnHierarchies,
                  (JSON..=) "Subtitle" Prelude.<$> subtitle,
                  (JSON..=) "Title" Prelude.<$> title,
                  (JSON..=) "VisualContentAltText"
                    Prelude.<$> visualContentAltText])))
instance Property "Actions" WaterfallVisualProperty where
  type PropertyType "Actions" WaterfallVisualProperty = [VisualCustomActionProperty]
  set newValue WaterfallVisualProperty {..}
    = WaterfallVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" WaterfallVisualProperty where
  type PropertyType "ChartConfiguration" WaterfallVisualProperty = WaterfallChartConfigurationProperty
  set newValue WaterfallVisualProperty {..}
    = WaterfallVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ColumnHierarchies" WaterfallVisualProperty where
  type PropertyType "ColumnHierarchies" WaterfallVisualProperty = [ColumnHierarchyProperty]
  set newValue WaterfallVisualProperty {..}
    = WaterfallVisualProperty
        {columnHierarchies = Prelude.pure newValue, ..}
instance Property "Subtitle" WaterfallVisualProperty where
  type PropertyType "Subtitle" WaterfallVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue WaterfallVisualProperty {..}
    = WaterfallVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" WaterfallVisualProperty where
  type PropertyType "Title" WaterfallVisualProperty = VisualTitleLabelOptionsProperty
  set newValue WaterfallVisualProperty {..}
    = WaterfallVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualContentAltText" WaterfallVisualProperty where
  type PropertyType "VisualContentAltText" WaterfallVisualProperty = Value Prelude.Text
  set newValue WaterfallVisualProperty {..}
    = WaterfallVisualProperty
        {visualContentAltText = Prelude.pure newValue, ..}
instance Property "VisualId" WaterfallVisualProperty where
  type PropertyType "VisualId" WaterfallVisualProperty = Value Prelude.Text
  set newValue WaterfallVisualProperty {..}
    = WaterfallVisualProperty {visualId = newValue, ..}