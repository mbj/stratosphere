module Stratosphere.QuickSight.Analysis.SeriesItemProperty (
        module Exports, SeriesItemProperty(..), mkSeriesItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DataFieldSeriesItemProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FieldSeriesItemProperty as Exports
import Stratosphere.ResourceProperties
data SeriesItemProperty
  = SeriesItemProperty {dataFieldSeriesItem :: (Prelude.Maybe DataFieldSeriesItemProperty),
                        fieldSeriesItem :: (Prelude.Maybe FieldSeriesItemProperty)}
mkSeriesItemProperty :: SeriesItemProperty
mkSeriesItemProperty
  = SeriesItemProperty
      {dataFieldSeriesItem = Prelude.Nothing,
       fieldSeriesItem = Prelude.Nothing}
instance ToResourceProperties SeriesItemProperty where
  toResourceProperties SeriesItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.SeriesItem",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataFieldSeriesItem" Prelude.<$> dataFieldSeriesItem,
                            (JSON..=) "FieldSeriesItem" Prelude.<$> fieldSeriesItem])}
instance JSON.ToJSON SeriesItemProperty where
  toJSON SeriesItemProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataFieldSeriesItem" Prelude.<$> dataFieldSeriesItem,
               (JSON..=) "FieldSeriesItem" Prelude.<$> fieldSeriesItem]))
instance Property "DataFieldSeriesItem" SeriesItemProperty where
  type PropertyType "DataFieldSeriesItem" SeriesItemProperty = DataFieldSeriesItemProperty
  set newValue SeriesItemProperty {..}
    = SeriesItemProperty
        {dataFieldSeriesItem = Prelude.pure newValue, ..}
instance Property "FieldSeriesItem" SeriesItemProperty where
  type PropertyType "FieldSeriesItem" SeriesItemProperty = FieldSeriesItemProperty
  set newValue SeriesItemProperty {..}
    = SeriesItemProperty {fieldSeriesItem = Prelude.pure newValue, ..}