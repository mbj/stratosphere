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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-personalize-solution-categoricalhyperparameterrange.html>
    CategoricalHyperParameterRangeProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-personalize-solution-categoricalhyperparameterrange.html#cfn-personalize-solution-categoricalhyperparameterrange-name>
                                            name :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-personalize-solution-categoricalhyperparameterrange.html#cfn-personalize-solution-categoricalhyperparameterrange-values>
                                            values :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCategoricalHyperParameterRangeProperty ::
  CategoricalHyperParameterRangeProperty
mkCategoricalHyperParameterRangeProperty
  = CategoricalHyperParameterRangeProperty
      {haddock_workaround_ = (), name = Prelude.Nothing,
       values = Prelude.Nothing}
instance ToResourceProperties CategoricalHyperParameterRangeProperty where
  toResourceProperties CategoricalHyperParameterRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Personalize::Solution.CategoricalHyperParameterRange",
         supportsTags = Prelude.False,
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
  type PropertyType "Values" CategoricalHyperParameterRangeProperty = ValueList Prelude.Text
  set newValue CategoricalHyperParameterRangeProperty {..}
    = CategoricalHyperParameterRangeProperty
        {values = Prelude.pure newValue, ..}