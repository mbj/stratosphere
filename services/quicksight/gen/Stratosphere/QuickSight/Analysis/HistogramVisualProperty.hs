module Stratosphere.QuickSight.Analysis.HistogramVisualProperty (
        module Exports, HistogramVisualProperty(..),
        mkHistogramVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.HistogramConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HistogramVisualProperty
  = HistogramVisualProperty {actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                             chartConfiguration :: (Prelude.Maybe HistogramConfigurationProperty),
                             subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                             title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                             visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHistogramVisualProperty ::
  Value Prelude.Text -> HistogramVisualProperty
mkHistogramVisualProperty visualId
  = HistogramVisualProperty
      {visualId = visualId, actions = Prelude.Nothing,
       chartConfiguration = Prelude.Nothing, subtitle = Prelude.Nothing,
       title = Prelude.Nothing}
instance ToResourceProperties HistogramVisualProperty where
  toResourceProperties HistogramVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.HistogramVisual",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VisualId" JSON..= visualId]
                           (Prelude.catMaybes
                              [(JSON..=) "Actions" Prelude.<$> actions,
                               (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                               (JSON..=) "Subtitle" Prelude.<$> subtitle,
                               (JSON..=) "Title" Prelude.<$> title]))}
instance JSON.ToJSON HistogramVisualProperty where
  toJSON HistogramVisualProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VisualId" JSON..= visualId]
              (Prelude.catMaybes
                 [(JSON..=) "Actions" Prelude.<$> actions,
                  (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                  (JSON..=) "Subtitle" Prelude.<$> subtitle,
                  (JSON..=) "Title" Prelude.<$> title])))
instance Property "Actions" HistogramVisualProperty where
  type PropertyType "Actions" HistogramVisualProperty = [VisualCustomActionProperty]
  set newValue HistogramVisualProperty {..}
    = HistogramVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" HistogramVisualProperty where
  type PropertyType "ChartConfiguration" HistogramVisualProperty = HistogramConfigurationProperty
  set newValue HistogramVisualProperty {..}
    = HistogramVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "Subtitle" HistogramVisualProperty where
  type PropertyType "Subtitle" HistogramVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue HistogramVisualProperty {..}
    = HistogramVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" HistogramVisualProperty where
  type PropertyType "Title" HistogramVisualProperty = VisualTitleLabelOptionsProperty
  set newValue HistogramVisualProperty {..}
    = HistogramVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualId" HistogramVisualProperty where
  type PropertyType "VisualId" HistogramVisualProperty = Value Prelude.Text
  set newValue HistogramVisualProperty {..}
    = HistogramVisualProperty {visualId = newValue, ..}