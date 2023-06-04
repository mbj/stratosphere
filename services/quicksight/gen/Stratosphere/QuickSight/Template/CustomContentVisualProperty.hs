module Stratosphere.QuickSight.Template.CustomContentVisualProperty (
        module Exports, CustomContentVisualProperty(..),
        mkCustomContentVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.CustomContentConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomContentVisualProperty
  = CustomContentVisualProperty {actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                                 chartConfiguration :: (Prelude.Maybe CustomContentConfigurationProperty),
                                 dataSetIdentifier :: (Value Prelude.Text),
                                 subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                                 title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                                 visualId :: (Value Prelude.Text)}
mkCustomContentVisualProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> CustomContentVisualProperty
mkCustomContentVisualProperty dataSetIdentifier visualId
  = CustomContentVisualProperty
      {dataSetIdentifier = dataSetIdentifier, visualId = visualId,
       actions = Prelude.Nothing, chartConfiguration = Prelude.Nothing,
       subtitle = Prelude.Nothing, title = Prelude.Nothing}
instance ToResourceProperties CustomContentVisualProperty where
  toResourceProperties CustomContentVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.CustomContentVisual",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataSetIdentifier" JSON..= dataSetIdentifier,
                            "VisualId" JSON..= visualId]
                           (Prelude.catMaybes
                              [(JSON..=) "Actions" Prelude.<$> actions,
                               (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                               (JSON..=) "Subtitle" Prelude.<$> subtitle,
                               (JSON..=) "Title" Prelude.<$> title]))}
instance JSON.ToJSON CustomContentVisualProperty where
  toJSON CustomContentVisualProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataSetIdentifier" JSON..= dataSetIdentifier,
               "VisualId" JSON..= visualId]
              (Prelude.catMaybes
                 [(JSON..=) "Actions" Prelude.<$> actions,
                  (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                  (JSON..=) "Subtitle" Prelude.<$> subtitle,
                  (JSON..=) "Title" Prelude.<$> title])))
instance Property "Actions" CustomContentVisualProperty where
  type PropertyType "Actions" CustomContentVisualProperty = [VisualCustomActionProperty]
  set newValue CustomContentVisualProperty {..}
    = CustomContentVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" CustomContentVisualProperty where
  type PropertyType "ChartConfiguration" CustomContentVisualProperty = CustomContentConfigurationProperty
  set newValue CustomContentVisualProperty {..}
    = CustomContentVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "DataSetIdentifier" CustomContentVisualProperty where
  type PropertyType "DataSetIdentifier" CustomContentVisualProperty = Value Prelude.Text
  set newValue CustomContentVisualProperty {..}
    = CustomContentVisualProperty {dataSetIdentifier = newValue, ..}
instance Property "Subtitle" CustomContentVisualProperty where
  type PropertyType "Subtitle" CustomContentVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue CustomContentVisualProperty {..}
    = CustomContentVisualProperty
        {subtitle = Prelude.pure newValue, ..}
instance Property "Title" CustomContentVisualProperty where
  type PropertyType "Title" CustomContentVisualProperty = VisualTitleLabelOptionsProperty
  set newValue CustomContentVisualProperty {..}
    = CustomContentVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualId" CustomContentVisualProperty where
  type PropertyType "VisualId" CustomContentVisualProperty = Value Prelude.Text
  set newValue CustomContentVisualProperty {..}
    = CustomContentVisualProperty {visualId = newValue, ..}