module Stratosphere.Personalize.Solution.IntegerHyperParameterRangeProperty (
        IntegerHyperParameterRangeProperty(..),
        mkIntegerHyperParameterRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IntegerHyperParameterRangeProperty
  = IntegerHyperParameterRangeProperty {maxValue :: (Prelude.Maybe (Value Prelude.Integer)),
                                        minValue :: (Prelude.Maybe (Value Prelude.Integer)),
                                        name :: (Prelude.Maybe (Value Prelude.Text))}
mkIntegerHyperParameterRangeProperty ::
  IntegerHyperParameterRangeProperty
mkIntegerHyperParameterRangeProperty
  = IntegerHyperParameterRangeProperty
      {maxValue = Prelude.Nothing, minValue = Prelude.Nothing,
       name = Prelude.Nothing}
instance ToResourceProperties IntegerHyperParameterRangeProperty where
  toResourceProperties IntegerHyperParameterRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Personalize::Solution.IntegerHyperParameterRange",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxValue" Prelude.<$> maxValue,
                            (JSON..=) "MinValue" Prelude.<$> minValue,
                            (JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON IntegerHyperParameterRangeProperty where
  toJSON IntegerHyperParameterRangeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxValue" Prelude.<$> maxValue,
               (JSON..=) "MinValue" Prelude.<$> minValue,
               (JSON..=) "Name" Prelude.<$> name]))
instance Property "MaxValue" IntegerHyperParameterRangeProperty where
  type PropertyType "MaxValue" IntegerHyperParameterRangeProperty = Value Prelude.Integer
  set newValue IntegerHyperParameterRangeProperty {..}
    = IntegerHyperParameterRangeProperty
        {maxValue = Prelude.pure newValue, ..}
instance Property "MinValue" IntegerHyperParameterRangeProperty where
  type PropertyType "MinValue" IntegerHyperParameterRangeProperty = Value Prelude.Integer
  set newValue IntegerHyperParameterRangeProperty {..}
    = IntegerHyperParameterRangeProperty
        {minValue = Prelude.pure newValue, ..}
instance Property "Name" IntegerHyperParameterRangeProperty where
  type PropertyType "Name" IntegerHyperParameterRangeProperty = Value Prelude.Text
  set newValue IntegerHyperParameterRangeProperty {..}
    = IntegerHyperParameterRangeProperty
        {name = Prelude.pure newValue, ..}