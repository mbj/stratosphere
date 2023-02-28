module Stratosphere.Personalize.Solution.ContinuousHyperParameterRangeProperty (
        ContinuousHyperParameterRangeProperty(..),
        mkContinuousHyperParameterRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContinuousHyperParameterRangeProperty
  = ContinuousHyperParameterRangeProperty {maxValue :: (Prelude.Maybe (Value Prelude.Double)),
                                           minValue :: (Prelude.Maybe (Value Prelude.Double)),
                                           name :: (Prelude.Maybe (Value Prelude.Text))}
mkContinuousHyperParameterRangeProperty ::
  ContinuousHyperParameterRangeProperty
mkContinuousHyperParameterRangeProperty
  = ContinuousHyperParameterRangeProperty
      {maxValue = Prelude.Nothing, minValue = Prelude.Nothing,
       name = Prelude.Nothing}
instance ToResourceProperties ContinuousHyperParameterRangeProperty where
  toResourceProperties ContinuousHyperParameterRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Personalize::Solution.ContinuousHyperParameterRange",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxValue" Prelude.<$> maxValue,
                            (JSON..=) "MinValue" Prelude.<$> minValue,
                            (JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON ContinuousHyperParameterRangeProperty where
  toJSON ContinuousHyperParameterRangeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxValue" Prelude.<$> maxValue,
               (JSON..=) "MinValue" Prelude.<$> minValue,
               (JSON..=) "Name" Prelude.<$> name]))
instance Property "MaxValue" ContinuousHyperParameterRangeProperty where
  type PropertyType "MaxValue" ContinuousHyperParameterRangeProperty = Value Prelude.Double
  set newValue ContinuousHyperParameterRangeProperty {..}
    = ContinuousHyperParameterRangeProperty
        {maxValue = Prelude.pure newValue, ..}
instance Property "MinValue" ContinuousHyperParameterRangeProperty where
  type PropertyType "MinValue" ContinuousHyperParameterRangeProperty = Value Prelude.Double
  set newValue ContinuousHyperParameterRangeProperty {..}
    = ContinuousHyperParameterRangeProperty
        {minValue = Prelude.pure newValue, ..}
instance Property "Name" ContinuousHyperParameterRangeProperty where
  type PropertyType "Name" ContinuousHyperParameterRangeProperty = Value Prelude.Text
  set newValue ContinuousHyperParameterRangeProperty {..}
    = ContinuousHyperParameterRangeProperty
        {name = Prelude.pure newValue, ..}