module Stratosphere.QuickSight.Analysis.AxisLabelOptionsProperty (
        module Exports, AxisLabelOptionsProperty(..),
        mkAxisLabelOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.AxisLabelReferenceOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FontConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AxisLabelOptionsProperty
  = AxisLabelOptionsProperty {applyTo :: (Prelude.Maybe AxisLabelReferenceOptionsProperty),
                              customLabel :: (Prelude.Maybe (Value Prelude.Text)),
                              fontConfiguration :: (Prelude.Maybe FontConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAxisLabelOptionsProperty :: AxisLabelOptionsProperty
mkAxisLabelOptionsProperty
  = AxisLabelOptionsProperty
      {applyTo = Prelude.Nothing, customLabel = Prelude.Nothing,
       fontConfiguration = Prelude.Nothing}
instance ToResourceProperties AxisLabelOptionsProperty where
  toResourceProperties AxisLabelOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.AxisLabelOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApplyTo" Prelude.<$> applyTo,
                            (JSON..=) "CustomLabel" Prelude.<$> customLabel,
                            (JSON..=) "FontConfiguration" Prelude.<$> fontConfiguration])}
instance JSON.ToJSON AxisLabelOptionsProperty where
  toJSON AxisLabelOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApplyTo" Prelude.<$> applyTo,
               (JSON..=) "CustomLabel" Prelude.<$> customLabel,
               (JSON..=) "FontConfiguration" Prelude.<$> fontConfiguration]))
instance Property "ApplyTo" AxisLabelOptionsProperty where
  type PropertyType "ApplyTo" AxisLabelOptionsProperty = AxisLabelReferenceOptionsProperty
  set newValue AxisLabelOptionsProperty {..}
    = AxisLabelOptionsProperty {applyTo = Prelude.pure newValue, ..}
instance Property "CustomLabel" AxisLabelOptionsProperty where
  type PropertyType "CustomLabel" AxisLabelOptionsProperty = Value Prelude.Text
  set newValue AxisLabelOptionsProperty {..}
    = AxisLabelOptionsProperty
        {customLabel = Prelude.pure newValue, ..}
instance Property "FontConfiguration" AxisLabelOptionsProperty where
  type PropertyType "FontConfiguration" AxisLabelOptionsProperty = FontConfigurationProperty
  set newValue AxisLabelOptionsProperty {..}
    = AxisLabelOptionsProperty
        {fontConfiguration = Prelude.pure newValue, ..}