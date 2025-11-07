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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-seriesitem.html>
    SeriesItemProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-seriesitem.html#cfn-quicksight-analysis-seriesitem-datafieldseriesitem>
                        dataFieldSeriesItem :: (Prelude.Maybe DataFieldSeriesItemProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-seriesitem.html#cfn-quicksight-analysis-seriesitem-fieldseriesitem>
                        fieldSeriesItem :: (Prelude.Maybe FieldSeriesItemProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSeriesItemProperty :: SeriesItemProperty
mkSeriesItemProperty
  = SeriesItemProperty
      {haddock_workaround_ = (), dataFieldSeriesItem = Prelude.Nothing,
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