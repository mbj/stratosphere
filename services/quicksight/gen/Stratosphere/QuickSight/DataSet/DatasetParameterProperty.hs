module Stratosphere.QuickSight.DataSet.DatasetParameterProperty (
        module Exports, DatasetParameterProperty(..),
        mkDatasetParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.DateTimeDatasetParameterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.DecimalDatasetParameterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.IntegerDatasetParameterProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.StringDatasetParameterProperty as Exports
import Stratosphere.ResourceProperties
data DatasetParameterProperty
  = DatasetParameterProperty {dateTimeDatasetParameter :: (Prelude.Maybe DateTimeDatasetParameterProperty),
                              decimalDatasetParameter :: (Prelude.Maybe DecimalDatasetParameterProperty),
                              integerDatasetParameter :: (Prelude.Maybe IntegerDatasetParameterProperty),
                              stringDatasetParameter :: (Prelude.Maybe StringDatasetParameterProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatasetParameterProperty :: DatasetParameterProperty
mkDatasetParameterProperty
  = DatasetParameterProperty
      {dateTimeDatasetParameter = Prelude.Nothing,
       decimalDatasetParameter = Prelude.Nothing,
       integerDatasetParameter = Prelude.Nothing,
       stringDatasetParameter = Prelude.Nothing}
instance ToResourceProperties DatasetParameterProperty where
  toResourceProperties DatasetParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.DatasetParameter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DateTimeDatasetParameter"
                              Prelude.<$> dateTimeDatasetParameter,
                            (JSON..=) "DecimalDatasetParameter"
                              Prelude.<$> decimalDatasetParameter,
                            (JSON..=) "IntegerDatasetParameter"
                              Prelude.<$> integerDatasetParameter,
                            (JSON..=) "StringDatasetParameter"
                              Prelude.<$> stringDatasetParameter])}
instance JSON.ToJSON DatasetParameterProperty where
  toJSON DatasetParameterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DateTimeDatasetParameter"
                 Prelude.<$> dateTimeDatasetParameter,
               (JSON..=) "DecimalDatasetParameter"
                 Prelude.<$> decimalDatasetParameter,
               (JSON..=) "IntegerDatasetParameter"
                 Prelude.<$> integerDatasetParameter,
               (JSON..=) "StringDatasetParameter"
                 Prelude.<$> stringDatasetParameter]))
instance Property "DateTimeDatasetParameter" DatasetParameterProperty where
  type PropertyType "DateTimeDatasetParameter" DatasetParameterProperty = DateTimeDatasetParameterProperty
  set newValue DatasetParameterProperty {..}
    = DatasetParameterProperty
        {dateTimeDatasetParameter = Prelude.pure newValue, ..}
instance Property "DecimalDatasetParameter" DatasetParameterProperty where
  type PropertyType "DecimalDatasetParameter" DatasetParameterProperty = DecimalDatasetParameterProperty
  set newValue DatasetParameterProperty {..}
    = DatasetParameterProperty
        {decimalDatasetParameter = Prelude.pure newValue, ..}
instance Property "IntegerDatasetParameter" DatasetParameterProperty where
  type PropertyType "IntegerDatasetParameter" DatasetParameterProperty = IntegerDatasetParameterProperty
  set newValue DatasetParameterProperty {..}
    = DatasetParameterProperty
        {integerDatasetParameter = Prelude.pure newValue, ..}
instance Property "StringDatasetParameter" DatasetParameterProperty where
  type PropertyType "StringDatasetParameter" DatasetParameterProperty = StringDatasetParameterProperty
  set newValue DatasetParameterProperty {..}
    = DatasetParameterProperty
        {stringDatasetParameter = Prelude.pure newValue, ..}