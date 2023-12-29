module Stratosphere.QuickSight.Template.InsightVisualProperty (
        module Exports, InsightVisualProperty(..), mkInsightVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.InsightConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InsightVisualProperty
  = InsightVisualProperty {actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                           dataSetIdentifier :: (Value Prelude.Text),
                           insightConfiguration :: (Prelude.Maybe InsightConfigurationProperty),
                           subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                           title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                           visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInsightVisualProperty ::
  Value Prelude.Text -> Value Prelude.Text -> InsightVisualProperty
mkInsightVisualProperty dataSetIdentifier visualId
  = InsightVisualProperty
      {dataSetIdentifier = dataSetIdentifier, visualId = visualId,
       actions = Prelude.Nothing, insightConfiguration = Prelude.Nothing,
       subtitle = Prelude.Nothing, title = Prelude.Nothing}
instance ToResourceProperties InsightVisualProperty where
  toResourceProperties InsightVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.InsightVisual",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataSetIdentifier" JSON..= dataSetIdentifier,
                            "VisualId" JSON..= visualId]
                           (Prelude.catMaybes
                              [(JSON..=) "Actions" Prelude.<$> actions,
                               (JSON..=) "InsightConfiguration" Prelude.<$> insightConfiguration,
                               (JSON..=) "Subtitle" Prelude.<$> subtitle,
                               (JSON..=) "Title" Prelude.<$> title]))}
instance JSON.ToJSON InsightVisualProperty where
  toJSON InsightVisualProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataSetIdentifier" JSON..= dataSetIdentifier,
               "VisualId" JSON..= visualId]
              (Prelude.catMaybes
                 [(JSON..=) "Actions" Prelude.<$> actions,
                  (JSON..=) "InsightConfiguration" Prelude.<$> insightConfiguration,
                  (JSON..=) "Subtitle" Prelude.<$> subtitle,
                  (JSON..=) "Title" Prelude.<$> title])))
instance Property "Actions" InsightVisualProperty where
  type PropertyType "Actions" InsightVisualProperty = [VisualCustomActionProperty]
  set newValue InsightVisualProperty {..}
    = InsightVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "DataSetIdentifier" InsightVisualProperty where
  type PropertyType "DataSetIdentifier" InsightVisualProperty = Value Prelude.Text
  set newValue InsightVisualProperty {..}
    = InsightVisualProperty {dataSetIdentifier = newValue, ..}
instance Property "InsightConfiguration" InsightVisualProperty where
  type PropertyType "InsightConfiguration" InsightVisualProperty = InsightConfigurationProperty
  set newValue InsightVisualProperty {..}
    = InsightVisualProperty
        {insightConfiguration = Prelude.pure newValue, ..}
instance Property "Subtitle" InsightVisualProperty where
  type PropertyType "Subtitle" InsightVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue InsightVisualProperty {..}
    = InsightVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" InsightVisualProperty where
  type PropertyType "Title" InsightVisualProperty = VisualTitleLabelOptionsProperty
  set newValue InsightVisualProperty {..}
    = InsightVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualId" InsightVisualProperty where
  type PropertyType "VisualId" InsightVisualProperty = Value Prelude.Text
  set newValue InsightVisualProperty {..}
    = InsightVisualProperty {visualId = newValue, ..}