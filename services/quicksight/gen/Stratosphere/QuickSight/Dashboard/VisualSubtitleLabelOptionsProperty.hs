module Stratosphere.QuickSight.Dashboard.VisualSubtitleLabelOptionsProperty (
        module Exports, VisualSubtitleLabelOptionsProperty(..),
        mkVisualSubtitleLabelOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.LongFormatTextProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VisualSubtitleLabelOptionsProperty
  = VisualSubtitleLabelOptionsProperty {formatText :: (Prelude.Maybe LongFormatTextProperty),
                                        visibility :: (Prelude.Maybe (Value Prelude.Text))}
mkVisualSubtitleLabelOptionsProperty ::
  VisualSubtitleLabelOptionsProperty
mkVisualSubtitleLabelOptionsProperty
  = VisualSubtitleLabelOptionsProperty
      {formatText = Prelude.Nothing, visibility = Prelude.Nothing}
instance ToResourceProperties VisualSubtitleLabelOptionsProperty where
  toResourceProperties VisualSubtitleLabelOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.VisualSubtitleLabelOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FormatText" Prelude.<$> formatText,
                            (JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON VisualSubtitleLabelOptionsProperty where
  toJSON VisualSubtitleLabelOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FormatText" Prelude.<$> formatText,
               (JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "FormatText" VisualSubtitleLabelOptionsProperty where
  type PropertyType "FormatText" VisualSubtitleLabelOptionsProperty = LongFormatTextProperty
  set newValue VisualSubtitleLabelOptionsProperty {..}
    = VisualSubtitleLabelOptionsProperty
        {formatText = Prelude.pure newValue, ..}
instance Property "Visibility" VisualSubtitleLabelOptionsProperty where
  type PropertyType "Visibility" VisualSubtitleLabelOptionsProperty = Value Prelude.Text
  set newValue VisualSubtitleLabelOptionsProperty {..}
    = VisualSubtitleLabelOptionsProperty
        {visibility = Prelude.pure newValue, ..}