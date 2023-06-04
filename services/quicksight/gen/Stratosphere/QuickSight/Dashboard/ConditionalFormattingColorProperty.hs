module Stratosphere.QuickSight.Dashboard.ConditionalFormattingColorProperty (
        module Exports, ConditionalFormattingColorProperty(..),
        mkConditionalFormattingColorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ConditionalFormattingGradientColorProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ConditionalFormattingSolidColorProperty as Exports
import Stratosphere.ResourceProperties
data ConditionalFormattingColorProperty
  = ConditionalFormattingColorProperty {gradient :: (Prelude.Maybe ConditionalFormattingGradientColorProperty),
                                        solid :: (Prelude.Maybe ConditionalFormattingSolidColorProperty)}
mkConditionalFormattingColorProperty ::
  ConditionalFormattingColorProperty
mkConditionalFormattingColorProperty
  = ConditionalFormattingColorProperty
      {gradient = Prelude.Nothing, solid = Prelude.Nothing}
instance ToResourceProperties ConditionalFormattingColorProperty where
  toResourceProperties ConditionalFormattingColorProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ConditionalFormattingColor",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Gradient" Prelude.<$> gradient,
                            (JSON..=) "Solid" Prelude.<$> solid])}
instance JSON.ToJSON ConditionalFormattingColorProperty where
  toJSON ConditionalFormattingColorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Gradient" Prelude.<$> gradient,
               (JSON..=) "Solid" Prelude.<$> solid]))
instance Property "Gradient" ConditionalFormattingColorProperty where
  type PropertyType "Gradient" ConditionalFormattingColorProperty = ConditionalFormattingGradientColorProperty
  set newValue ConditionalFormattingColorProperty {..}
    = ConditionalFormattingColorProperty
        {gradient = Prelude.pure newValue, ..}
instance Property "Solid" ConditionalFormattingColorProperty where
  type PropertyType "Solid" ConditionalFormattingColorProperty = ConditionalFormattingSolidColorProperty
  set newValue ConditionalFormattingColorProperty {..}
    = ConditionalFormattingColorProperty
        {solid = Prelude.pure newValue, ..}