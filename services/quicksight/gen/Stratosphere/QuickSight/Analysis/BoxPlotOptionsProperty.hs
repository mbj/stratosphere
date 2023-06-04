module Stratosphere.QuickSight.Analysis.BoxPlotOptionsProperty (
        module Exports, BoxPlotOptionsProperty(..),
        mkBoxPlotOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.BoxPlotStyleOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BoxPlotOptionsProperty
  = BoxPlotOptionsProperty {allDataPointsVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                            outlierVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                            styleOptions :: (Prelude.Maybe BoxPlotStyleOptionsProperty)}
mkBoxPlotOptionsProperty :: BoxPlotOptionsProperty
mkBoxPlotOptionsProperty
  = BoxPlotOptionsProperty
      {allDataPointsVisibility = Prelude.Nothing,
       outlierVisibility = Prelude.Nothing,
       styleOptions = Prelude.Nothing}
instance ToResourceProperties BoxPlotOptionsProperty where
  toResourceProperties BoxPlotOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.BoxPlotOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllDataPointsVisibility"
                              Prelude.<$> allDataPointsVisibility,
                            (JSON..=) "OutlierVisibility" Prelude.<$> outlierVisibility,
                            (JSON..=) "StyleOptions" Prelude.<$> styleOptions])}
instance JSON.ToJSON BoxPlotOptionsProperty where
  toJSON BoxPlotOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllDataPointsVisibility"
                 Prelude.<$> allDataPointsVisibility,
               (JSON..=) "OutlierVisibility" Prelude.<$> outlierVisibility,
               (JSON..=) "StyleOptions" Prelude.<$> styleOptions]))
instance Property "AllDataPointsVisibility" BoxPlotOptionsProperty where
  type PropertyType "AllDataPointsVisibility" BoxPlotOptionsProperty = Value Prelude.Text
  set newValue BoxPlotOptionsProperty {..}
    = BoxPlotOptionsProperty
        {allDataPointsVisibility = Prelude.pure newValue, ..}
instance Property "OutlierVisibility" BoxPlotOptionsProperty where
  type PropertyType "OutlierVisibility" BoxPlotOptionsProperty = Value Prelude.Text
  set newValue BoxPlotOptionsProperty {..}
    = BoxPlotOptionsProperty
        {outlierVisibility = Prelude.pure newValue, ..}
instance Property "StyleOptions" BoxPlotOptionsProperty where
  type PropertyType "StyleOptions" BoxPlotOptionsProperty = BoxPlotStyleOptionsProperty
  set newValue BoxPlotOptionsProperty {..}
    = BoxPlotOptionsProperty {styleOptions = Prelude.pure newValue, ..}