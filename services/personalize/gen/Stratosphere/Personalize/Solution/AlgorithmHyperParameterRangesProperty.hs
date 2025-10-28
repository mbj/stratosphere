module Stratosphere.Personalize.Solution.AlgorithmHyperParameterRangesProperty (
        module Exports, AlgorithmHyperParameterRangesProperty(..),
        mkAlgorithmHyperParameterRangesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Personalize.Solution.CategoricalHyperParameterRangeProperty as Exports
import {-# SOURCE #-} Stratosphere.Personalize.Solution.ContinuousHyperParameterRangeProperty as Exports
import {-# SOURCE #-} Stratosphere.Personalize.Solution.IntegerHyperParameterRangeProperty as Exports
import Stratosphere.ResourceProperties
data AlgorithmHyperParameterRangesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-personalize-solution-algorithmhyperparameterranges.html>
    AlgorithmHyperParameterRangesProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-personalize-solution-algorithmhyperparameterranges.html#cfn-personalize-solution-algorithmhyperparameterranges-categoricalhyperparameterranges>
                                           categoricalHyperParameterRanges :: (Prelude.Maybe [CategoricalHyperParameterRangeProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-personalize-solution-algorithmhyperparameterranges.html#cfn-personalize-solution-algorithmhyperparameterranges-continuoushyperparameterranges>
                                           continuousHyperParameterRanges :: (Prelude.Maybe [ContinuousHyperParameterRangeProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-personalize-solution-algorithmhyperparameterranges.html#cfn-personalize-solution-algorithmhyperparameterranges-integerhyperparameterranges>
                                           integerHyperParameterRanges :: (Prelude.Maybe [IntegerHyperParameterRangeProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAlgorithmHyperParameterRangesProperty ::
  AlgorithmHyperParameterRangesProperty
mkAlgorithmHyperParameterRangesProperty
  = AlgorithmHyperParameterRangesProperty
      {haddock_workaround_ = (),
       categoricalHyperParameterRanges = Prelude.Nothing,
       continuousHyperParameterRanges = Prelude.Nothing,
       integerHyperParameterRanges = Prelude.Nothing}
instance ToResourceProperties AlgorithmHyperParameterRangesProperty where
  toResourceProperties AlgorithmHyperParameterRangesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Personalize::Solution.AlgorithmHyperParameterRanges",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategoricalHyperParameterRanges"
                              Prelude.<$> categoricalHyperParameterRanges,
                            (JSON..=) "ContinuousHyperParameterRanges"
                              Prelude.<$> continuousHyperParameterRanges,
                            (JSON..=) "IntegerHyperParameterRanges"
                              Prelude.<$> integerHyperParameterRanges])}
instance JSON.ToJSON AlgorithmHyperParameterRangesProperty where
  toJSON AlgorithmHyperParameterRangesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategoricalHyperParameterRanges"
                 Prelude.<$> categoricalHyperParameterRanges,
               (JSON..=) "ContinuousHyperParameterRanges"
                 Prelude.<$> continuousHyperParameterRanges,
               (JSON..=) "IntegerHyperParameterRanges"
                 Prelude.<$> integerHyperParameterRanges]))
instance Property "CategoricalHyperParameterRanges" AlgorithmHyperParameterRangesProperty where
  type PropertyType "CategoricalHyperParameterRanges" AlgorithmHyperParameterRangesProperty = [CategoricalHyperParameterRangeProperty]
  set newValue AlgorithmHyperParameterRangesProperty {..}
    = AlgorithmHyperParameterRangesProperty
        {categoricalHyperParameterRanges = Prelude.pure newValue, ..}
instance Property "ContinuousHyperParameterRanges" AlgorithmHyperParameterRangesProperty where
  type PropertyType "ContinuousHyperParameterRanges" AlgorithmHyperParameterRangesProperty = [ContinuousHyperParameterRangeProperty]
  set newValue AlgorithmHyperParameterRangesProperty {..}
    = AlgorithmHyperParameterRangesProperty
        {continuousHyperParameterRanges = Prelude.pure newValue, ..}
instance Property "IntegerHyperParameterRanges" AlgorithmHyperParameterRangesProperty where
  type PropertyType "IntegerHyperParameterRanges" AlgorithmHyperParameterRangesProperty = [IntegerHyperParameterRangeProperty]
  set newValue AlgorithmHyperParameterRangesProperty {..}
    = AlgorithmHyperParameterRangesProperty
        {integerHyperParameterRanges = Prelude.pure newValue, ..}