module Stratosphere.QuickSight.Template.PluginVisualProperty (
        module Exports, PluginVisualProperty(..), mkPluginVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.PluginVisualConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PluginVisualProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pluginvisual.html>
    PluginVisualProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pluginvisual.html#cfn-quicksight-template-pluginvisual-chartconfiguration>
                          chartConfiguration :: (Prelude.Maybe PluginVisualConfigurationProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pluginvisual.html#cfn-quicksight-template-pluginvisual-pluginarn>
                          pluginArn :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pluginvisual.html#cfn-quicksight-template-pluginvisual-subtitle>
                          subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pluginvisual.html#cfn-quicksight-template-pluginvisual-title>
                          title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pluginvisual.html#cfn-quicksight-template-pluginvisual-visualcontentalttext>
                          visualContentAltText :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pluginvisual.html#cfn-quicksight-template-pluginvisual-visualid>
                          visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPluginVisualProperty ::
  Value Prelude.Text -> Value Prelude.Text -> PluginVisualProperty
mkPluginVisualProperty pluginArn visualId
  = PluginVisualProperty
      {haddock_workaround_ = (), pluginArn = pluginArn,
       visualId = visualId, chartConfiguration = Prelude.Nothing,
       subtitle = Prelude.Nothing, title = Prelude.Nothing,
       visualContentAltText = Prelude.Nothing}
instance ToResourceProperties PluginVisualProperty where
  toResourceProperties PluginVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.PluginVisual",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PluginArn" JSON..= pluginArn, "VisualId" JSON..= visualId]
                           (Prelude.catMaybes
                              [(JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                               (JSON..=) "Subtitle" Prelude.<$> subtitle,
                               (JSON..=) "Title" Prelude.<$> title,
                               (JSON..=) "VisualContentAltText"
                                 Prelude.<$> visualContentAltText]))}
instance JSON.ToJSON PluginVisualProperty where
  toJSON PluginVisualProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PluginArn" JSON..= pluginArn, "VisualId" JSON..= visualId]
              (Prelude.catMaybes
                 [(JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                  (JSON..=) "Subtitle" Prelude.<$> subtitle,
                  (JSON..=) "Title" Prelude.<$> title,
                  (JSON..=) "VisualContentAltText"
                    Prelude.<$> visualContentAltText])))
instance Property "ChartConfiguration" PluginVisualProperty where
  type PropertyType "ChartConfiguration" PluginVisualProperty = PluginVisualConfigurationProperty
  set newValue PluginVisualProperty {..}
    = PluginVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "PluginArn" PluginVisualProperty where
  type PropertyType "PluginArn" PluginVisualProperty = Value Prelude.Text
  set newValue PluginVisualProperty {..}
    = PluginVisualProperty {pluginArn = newValue, ..}
instance Property "Subtitle" PluginVisualProperty where
  type PropertyType "Subtitle" PluginVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue PluginVisualProperty {..}
    = PluginVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" PluginVisualProperty where
  type PropertyType "Title" PluginVisualProperty = VisualTitleLabelOptionsProperty
  set newValue PluginVisualProperty {..}
    = PluginVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualContentAltText" PluginVisualProperty where
  type PropertyType "VisualContentAltText" PluginVisualProperty = Value Prelude.Text
  set newValue PluginVisualProperty {..}
    = PluginVisualProperty
        {visualContentAltText = Prelude.pure newValue, ..}
instance Property "VisualId" PluginVisualProperty where
  type PropertyType "VisualId" PluginVisualProperty = Value Prelude.Text
  set newValue PluginVisualProperty {..}
    = PluginVisualProperty {visualId = newValue, ..}