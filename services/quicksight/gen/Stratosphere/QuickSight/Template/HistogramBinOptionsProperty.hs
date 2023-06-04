module Stratosphere.QuickSight.Template.HistogramBinOptionsProperty (
        module Exports, HistogramBinOptionsProperty(..),
        mkHistogramBinOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.BinCountOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.BinWidthOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HistogramBinOptionsProperty
  = HistogramBinOptionsProperty {binCount :: (Prelude.Maybe BinCountOptionsProperty),
                                 binWidth :: (Prelude.Maybe BinWidthOptionsProperty),
                                 selectedBinType :: (Prelude.Maybe (Value Prelude.Text)),
                                 startValue :: (Prelude.Maybe (Value Prelude.Double))}
mkHistogramBinOptionsProperty :: HistogramBinOptionsProperty
mkHistogramBinOptionsProperty
  = HistogramBinOptionsProperty
      {binCount = Prelude.Nothing, binWidth = Prelude.Nothing,
       selectedBinType = Prelude.Nothing, startValue = Prelude.Nothing}
instance ToResourceProperties HistogramBinOptionsProperty where
  toResourceProperties HistogramBinOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.HistogramBinOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BinCount" Prelude.<$> binCount,
                            (JSON..=) "BinWidth" Prelude.<$> binWidth,
                            (JSON..=) "SelectedBinType" Prelude.<$> selectedBinType,
                            (JSON..=) "StartValue" Prelude.<$> startValue])}
instance JSON.ToJSON HistogramBinOptionsProperty where
  toJSON HistogramBinOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BinCount" Prelude.<$> binCount,
               (JSON..=) "BinWidth" Prelude.<$> binWidth,
               (JSON..=) "SelectedBinType" Prelude.<$> selectedBinType,
               (JSON..=) "StartValue" Prelude.<$> startValue]))
instance Property "BinCount" HistogramBinOptionsProperty where
  type PropertyType "BinCount" HistogramBinOptionsProperty = BinCountOptionsProperty
  set newValue HistogramBinOptionsProperty {..}
    = HistogramBinOptionsProperty
        {binCount = Prelude.pure newValue, ..}
instance Property "BinWidth" HistogramBinOptionsProperty where
  type PropertyType "BinWidth" HistogramBinOptionsProperty = BinWidthOptionsProperty
  set newValue HistogramBinOptionsProperty {..}
    = HistogramBinOptionsProperty
        {binWidth = Prelude.pure newValue, ..}
instance Property "SelectedBinType" HistogramBinOptionsProperty where
  type PropertyType "SelectedBinType" HistogramBinOptionsProperty = Value Prelude.Text
  set newValue HistogramBinOptionsProperty {..}
    = HistogramBinOptionsProperty
        {selectedBinType = Prelude.pure newValue, ..}
instance Property "StartValue" HistogramBinOptionsProperty where
  type PropertyType "StartValue" HistogramBinOptionsProperty = Value Prelude.Double
  set newValue HistogramBinOptionsProperty {..}
    = HistogramBinOptionsProperty
        {startValue = Prelude.pure newValue, ..}