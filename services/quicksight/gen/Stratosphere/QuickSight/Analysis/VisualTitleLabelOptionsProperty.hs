module Stratosphere.QuickSight.Analysis.VisualTitleLabelOptionsProperty (
        module Exports, VisualTitleLabelOptionsProperty(..),
        mkVisualTitleLabelOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ShortFormatTextProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VisualTitleLabelOptionsProperty
  = VisualTitleLabelOptionsProperty {formatText :: (Prelude.Maybe ShortFormatTextProperty),
                                     visibility :: (Prelude.Maybe (Value Prelude.Text))}
mkVisualTitleLabelOptionsProperty ::
  VisualTitleLabelOptionsProperty
mkVisualTitleLabelOptionsProperty
  = VisualTitleLabelOptionsProperty
      {formatText = Prelude.Nothing, visibility = Prelude.Nothing}
instance ToResourceProperties VisualTitleLabelOptionsProperty where
  toResourceProperties VisualTitleLabelOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.VisualTitleLabelOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FormatText" Prelude.<$> formatText,
                            (JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON VisualTitleLabelOptionsProperty where
  toJSON VisualTitleLabelOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FormatText" Prelude.<$> formatText,
               (JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "FormatText" VisualTitleLabelOptionsProperty where
  type PropertyType "FormatText" VisualTitleLabelOptionsProperty = ShortFormatTextProperty
  set newValue VisualTitleLabelOptionsProperty {..}
    = VisualTitleLabelOptionsProperty
        {formatText = Prelude.pure newValue, ..}
instance Property "Visibility" VisualTitleLabelOptionsProperty where
  type PropertyType "Visibility" VisualTitleLabelOptionsProperty = Value Prelude.Text
  set newValue VisualTitleLabelOptionsProperty {..}
    = VisualTitleLabelOptionsProperty
        {visibility = Prelude.pure newValue, ..}