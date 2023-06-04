module Stratosphere.QuickSight.Dashboard.LegendOptionsProperty (
        module Exports, LegendOptionsProperty(..), mkLegendOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.LabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LegendOptionsProperty
  = LegendOptionsProperty {height :: (Prelude.Maybe (Value Prelude.Text)),
                           position :: (Prelude.Maybe (Value Prelude.Text)),
                           title :: (Prelude.Maybe LabelOptionsProperty),
                           visibility :: (Prelude.Maybe (Value Prelude.Text)),
                           width :: (Prelude.Maybe (Value Prelude.Text))}
mkLegendOptionsProperty :: LegendOptionsProperty
mkLegendOptionsProperty
  = LegendOptionsProperty
      {height = Prelude.Nothing, position = Prelude.Nothing,
       title = Prelude.Nothing, visibility = Prelude.Nothing,
       width = Prelude.Nothing}
instance ToResourceProperties LegendOptionsProperty where
  toResourceProperties LegendOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.LegendOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Height" Prelude.<$> height,
                            (JSON..=) "Position" Prelude.<$> position,
                            (JSON..=) "Title" Prelude.<$> title,
                            (JSON..=) "Visibility" Prelude.<$> visibility,
                            (JSON..=) "Width" Prelude.<$> width])}
instance JSON.ToJSON LegendOptionsProperty where
  toJSON LegendOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Height" Prelude.<$> height,
               (JSON..=) "Position" Prelude.<$> position,
               (JSON..=) "Title" Prelude.<$> title,
               (JSON..=) "Visibility" Prelude.<$> visibility,
               (JSON..=) "Width" Prelude.<$> width]))
instance Property "Height" LegendOptionsProperty where
  type PropertyType "Height" LegendOptionsProperty = Value Prelude.Text
  set newValue LegendOptionsProperty {..}
    = LegendOptionsProperty {height = Prelude.pure newValue, ..}
instance Property "Position" LegendOptionsProperty where
  type PropertyType "Position" LegendOptionsProperty = Value Prelude.Text
  set newValue LegendOptionsProperty {..}
    = LegendOptionsProperty {position = Prelude.pure newValue, ..}
instance Property "Title" LegendOptionsProperty where
  type PropertyType "Title" LegendOptionsProperty = LabelOptionsProperty
  set newValue LegendOptionsProperty {..}
    = LegendOptionsProperty {title = Prelude.pure newValue, ..}
instance Property "Visibility" LegendOptionsProperty where
  type PropertyType "Visibility" LegendOptionsProperty = Value Prelude.Text
  set newValue LegendOptionsProperty {..}
    = LegendOptionsProperty {visibility = Prelude.pure newValue, ..}
instance Property "Width" LegendOptionsProperty where
  type PropertyType "Width" LegendOptionsProperty = Value Prelude.Text
  set newValue LegendOptionsProperty {..}
    = LegendOptionsProperty {width = Prelude.pure newValue, ..}