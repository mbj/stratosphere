module Stratosphere.QuickSight.Analysis.TopBottomFilterProperty (
        module Exports, TopBottomFilterProperty(..),
        mkTopBottomFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.AggregationSortConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopBottomFilterProperty
  = TopBottomFilterProperty {aggregationSortConfigurations :: [AggregationSortConfigurationProperty],
                             column :: ColumnIdentifierProperty,
                             filterId :: (Value Prelude.Text),
                             limit :: (Prelude.Maybe (Value Prelude.Double)),
                             parameterName :: (Prelude.Maybe (Value Prelude.Text)),
                             timeGranularity :: (Prelude.Maybe (Value Prelude.Text))}
mkTopBottomFilterProperty ::
  [AggregationSortConfigurationProperty]
  -> ColumnIdentifierProperty
     -> Value Prelude.Text -> TopBottomFilterProperty
mkTopBottomFilterProperty
  aggregationSortConfigurations
  column
  filterId
  = TopBottomFilterProperty
      {aggregationSortConfigurations = aggregationSortConfigurations,
       column = column, filterId = filterId, limit = Prelude.Nothing,
       parameterName = Prelude.Nothing, timeGranularity = Prelude.Nothing}
instance ToResourceProperties TopBottomFilterProperty where
  toResourceProperties TopBottomFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.TopBottomFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AggregationSortConfigurations"
                              JSON..= aggregationSortConfigurations,
                            "Column" JSON..= column, "FilterId" JSON..= filterId]
                           (Prelude.catMaybes
                              [(JSON..=) "Limit" Prelude.<$> limit,
                               (JSON..=) "ParameterName" Prelude.<$> parameterName,
                               (JSON..=) "TimeGranularity" Prelude.<$> timeGranularity]))}
instance JSON.ToJSON TopBottomFilterProperty where
  toJSON TopBottomFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AggregationSortConfigurations"
                 JSON..= aggregationSortConfigurations,
               "Column" JSON..= column, "FilterId" JSON..= filterId]
              (Prelude.catMaybes
                 [(JSON..=) "Limit" Prelude.<$> limit,
                  (JSON..=) "ParameterName" Prelude.<$> parameterName,
                  (JSON..=) "TimeGranularity" Prelude.<$> timeGranularity])))
instance Property "AggregationSortConfigurations" TopBottomFilterProperty where
  type PropertyType "AggregationSortConfigurations" TopBottomFilterProperty = [AggregationSortConfigurationProperty]
  set newValue TopBottomFilterProperty {..}
    = TopBottomFilterProperty
        {aggregationSortConfigurations = newValue, ..}
instance Property "Column" TopBottomFilterProperty where
  type PropertyType "Column" TopBottomFilterProperty = ColumnIdentifierProperty
  set newValue TopBottomFilterProperty {..}
    = TopBottomFilterProperty {column = newValue, ..}
instance Property "FilterId" TopBottomFilterProperty where
  type PropertyType "FilterId" TopBottomFilterProperty = Value Prelude.Text
  set newValue TopBottomFilterProperty {..}
    = TopBottomFilterProperty {filterId = newValue, ..}
instance Property "Limit" TopBottomFilterProperty where
  type PropertyType "Limit" TopBottomFilterProperty = Value Prelude.Double
  set newValue TopBottomFilterProperty {..}
    = TopBottomFilterProperty {limit = Prelude.pure newValue, ..}
instance Property "ParameterName" TopBottomFilterProperty where
  type PropertyType "ParameterName" TopBottomFilterProperty = Value Prelude.Text
  set newValue TopBottomFilterProperty {..}
    = TopBottomFilterProperty
        {parameterName = Prelude.pure newValue, ..}
instance Property "TimeGranularity" TopBottomFilterProperty where
  type PropertyType "TimeGranularity" TopBottomFilterProperty = Value Prelude.Text
  set newValue TopBottomFilterProperty {..}
    = TopBottomFilterProperty
        {timeGranularity = Prelude.pure newValue, ..}