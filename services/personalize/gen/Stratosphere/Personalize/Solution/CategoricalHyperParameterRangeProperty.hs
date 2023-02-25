module Stratosphere.Personalize.Solution.CategoricalHyperParameterRangeProperty (
        CategoricalHyperParameterRangeProperty(..),
        mkCategoricalHyperParameterRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CategoricalHyperParameterRangeProperty
  = CategoricalHyperParameterRangeProperty {name :: (Prelude.Maybe (Value Prelude.Text)),
                                            values :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkCategoricalHyperParameterRangeProperty ::
  CategoricalHyperParameterRangeProperty
mkCategoricalHyperParameterRangeProperty
  = CategoricalHyperParameterRangeProperty
      {name = Prelude.Nothing, values = Prelude.Nothing}
instance ToResourceProperties CategoricalHyperParameterRangeProperty where
  toResourceProperties CategoricalHyperParameterRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Personalize::Solution.CategoricalHyperParameterRange",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON CategoricalHyperParameterRangeProperty where
  toJSON CategoricalHyperParameterRangeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "Name" CategoricalHyperParameterRangeProperty where
  type PropertyType "Name" CategoricalHyperParameterRangeProperty = Value Prelude.Text
  set newValue CategoricalHyperParameterRangeProperty {..}
    = CategoricalHyperParameterRangeProperty
        {name = Prelude.pure newValue, ..}
instance Property "Values" CategoricalHyperParameterRangeProperty where
  type PropertyType "Values" CategoricalHyperParameterRangeProperty = ValueList (Value Prelude.Text)
  set newValue CategoricalHyperParameterRangeProperty {..}
    = CategoricalHyperParameterRangeProperty
        {values = Prelude.pure newValue, ..}