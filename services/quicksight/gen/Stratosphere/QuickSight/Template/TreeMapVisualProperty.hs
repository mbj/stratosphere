module Stratosphere.QuickSight.Template.TreeMapVisualProperty (
        module Exports, TreeMapVisualProperty(..), mkTreeMapVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TreeMapConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TreeMapVisualProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-treemapvisual.html>
    TreeMapVisualProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-treemapvisual.html#cfn-quicksight-template-treemapvisual-actions>
                           actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-treemapvisual.html#cfn-quicksight-template-treemapvisual-chartconfiguration>
                           chartConfiguration :: (Prelude.Maybe TreeMapConfigurationProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-treemapvisual.html#cfn-quicksight-template-treemapvisual-columnhierarchies>
                           columnHierarchies :: (Prelude.Maybe [ColumnHierarchyProperty]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-treemapvisual.html#cfn-quicksight-template-treemapvisual-subtitle>
                           subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-treemapvisual.html#cfn-quicksight-template-treemapvisual-title>
                           title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-treemapvisual.html#cfn-quicksight-template-treemapvisual-visualcontentalttext>
                           visualContentAltText :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-treemapvisual.html#cfn-quicksight-template-treemapvisual-visualid>
                           visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTreeMapVisualProperty ::
  Value Prelude.Text -> TreeMapVisualProperty
mkTreeMapVisualProperty visualId
  = TreeMapVisualProperty
      {haddock_workaround_ = (), visualId = visualId,
       actions = Prelude.Nothing, chartConfiguration = Prelude.Nothing,
       columnHierarchies = Prelude.Nothing, subtitle = Prelude.Nothing,
       title = Prelude.Nothing, visualContentAltText = Prelude.Nothing}
instance ToResourceProperties TreeMapVisualProperty where
  toResourceProperties TreeMapVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TreeMapVisual",
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
instance JSON.ToJSON TreeMapVisualProperty where
  toJSON TreeMapVisualProperty {..}
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
instance Property "Actions" TreeMapVisualProperty where
  type PropertyType "Actions" TreeMapVisualProperty = [VisualCustomActionProperty]
  set newValue TreeMapVisualProperty {..}
    = TreeMapVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" TreeMapVisualProperty where
  type PropertyType "ChartConfiguration" TreeMapVisualProperty = TreeMapConfigurationProperty
  set newValue TreeMapVisualProperty {..}
    = TreeMapVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ColumnHierarchies" TreeMapVisualProperty where
  type PropertyType "ColumnHierarchies" TreeMapVisualProperty = [ColumnHierarchyProperty]
  set newValue TreeMapVisualProperty {..}
    = TreeMapVisualProperty
        {columnHierarchies = Prelude.pure newValue, ..}
instance Property "Subtitle" TreeMapVisualProperty where
  type PropertyType "Subtitle" TreeMapVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue TreeMapVisualProperty {..}
    = TreeMapVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" TreeMapVisualProperty where
  type PropertyType "Title" TreeMapVisualProperty = VisualTitleLabelOptionsProperty
  set newValue TreeMapVisualProperty {..}
    = TreeMapVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualContentAltText" TreeMapVisualProperty where
  type PropertyType "VisualContentAltText" TreeMapVisualProperty = Value Prelude.Text
  set newValue TreeMapVisualProperty {..}
    = TreeMapVisualProperty
        {visualContentAltText = Prelude.pure newValue, ..}
instance Property "VisualId" TreeMapVisualProperty where
  type PropertyType "VisualId" TreeMapVisualProperty = Value Prelude.Text
  set newValue TreeMapVisualProperty {..}
    = TreeMapVisualProperty {visualId = newValue, ..}