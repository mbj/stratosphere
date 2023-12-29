module Stratosphere.QuickSight.Template.TimeEqualityFilterProperty (
        module Exports, TimeEqualityFilterProperty(..),
        mkTimeEqualityFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeEqualityFilterProperty
  = TimeEqualityFilterProperty {column :: ColumnIdentifierProperty,
                                filterId :: (Value Prelude.Text),
                                parameterName :: (Prelude.Maybe (Value Prelude.Text)),
                                timeGranularity :: (Prelude.Maybe (Value Prelude.Text)),
                                value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimeEqualityFilterProperty ::
  ColumnIdentifierProperty
  -> Value Prelude.Text -> TimeEqualityFilterProperty
mkTimeEqualityFilterProperty column filterId
  = TimeEqualityFilterProperty
      {column = column, filterId = filterId,
       parameterName = Prelude.Nothing, timeGranularity = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties TimeEqualityFilterProperty where
  toResourceProperties TimeEqualityFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TimeEqualityFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Column" JSON..= column, "FilterId" JSON..= filterId]
                           (Prelude.catMaybes
                              [(JSON..=) "ParameterName" Prelude.<$> parameterName,
                               (JSON..=) "TimeGranularity" Prelude.<$> timeGranularity,
                               (JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON TimeEqualityFilterProperty where
  toJSON TimeEqualityFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Column" JSON..= column, "FilterId" JSON..= filterId]
              (Prelude.catMaybes
                 [(JSON..=) "ParameterName" Prelude.<$> parameterName,
                  (JSON..=) "TimeGranularity" Prelude.<$> timeGranularity,
                  (JSON..=) "Value" Prelude.<$> value])))
instance Property "Column" TimeEqualityFilterProperty where
  type PropertyType "Column" TimeEqualityFilterProperty = ColumnIdentifierProperty
  set newValue TimeEqualityFilterProperty {..}
    = TimeEqualityFilterProperty {column = newValue, ..}
instance Property "FilterId" TimeEqualityFilterProperty where
  type PropertyType "FilterId" TimeEqualityFilterProperty = Value Prelude.Text
  set newValue TimeEqualityFilterProperty {..}
    = TimeEqualityFilterProperty {filterId = newValue, ..}
instance Property "ParameterName" TimeEqualityFilterProperty where
  type PropertyType "ParameterName" TimeEqualityFilterProperty = Value Prelude.Text
  set newValue TimeEqualityFilterProperty {..}
    = TimeEqualityFilterProperty
        {parameterName = Prelude.pure newValue, ..}
instance Property "TimeGranularity" TimeEqualityFilterProperty where
  type PropertyType "TimeGranularity" TimeEqualityFilterProperty = Value Prelude.Text
  set newValue TimeEqualityFilterProperty {..}
    = TimeEqualityFilterProperty
        {timeGranularity = Prelude.pure newValue, ..}
instance Property "Value" TimeEqualityFilterProperty where
  type PropertyType "Value" TimeEqualityFilterProperty = Value Prelude.Text
  set newValue TimeEqualityFilterProperty {..}
    = TimeEqualityFilterProperty {value = Prelude.pure newValue, ..}