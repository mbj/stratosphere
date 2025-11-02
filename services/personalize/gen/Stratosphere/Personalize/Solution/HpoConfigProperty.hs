module Stratosphere.Personalize.Solution.HpoConfigProperty (
        module Exports, HpoConfigProperty(..), mkHpoConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Personalize.Solution.AlgorithmHyperParameterRangesProperty as Exports
import {-# SOURCE #-} Stratosphere.Personalize.Solution.HpoObjectiveProperty as Exports
import {-# SOURCE #-} Stratosphere.Personalize.Solution.HpoResourceConfigProperty as Exports
import Stratosphere.ResourceProperties
data HpoConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-personalize-solution-hpoconfig.html>
    HpoConfigProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-personalize-solution-hpoconfig.html#cfn-personalize-solution-hpoconfig-algorithmhyperparameterranges>
                       algorithmHyperParameterRanges :: (Prelude.Maybe AlgorithmHyperParameterRangesProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-personalize-solution-hpoconfig.html#cfn-personalize-solution-hpoconfig-hpoobjective>
                       hpoObjective :: (Prelude.Maybe HpoObjectiveProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-personalize-solution-hpoconfig.html#cfn-personalize-solution-hpoconfig-hporesourceconfig>
                       hpoResourceConfig :: (Prelude.Maybe HpoResourceConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHpoConfigProperty :: HpoConfigProperty
mkHpoConfigProperty
  = HpoConfigProperty
      {haddock_workaround_ = (),
       algorithmHyperParameterRanges = Prelude.Nothing,
       hpoObjective = Prelude.Nothing,
       hpoResourceConfig = Prelude.Nothing}
instance ToResourceProperties HpoConfigProperty where
  toResourceProperties HpoConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Personalize::Solution.HpoConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AlgorithmHyperParameterRanges"
                              Prelude.<$> algorithmHyperParameterRanges,
                            (JSON..=) "HpoObjective" Prelude.<$> hpoObjective,
                            (JSON..=) "HpoResourceConfig" Prelude.<$> hpoResourceConfig])}
instance JSON.ToJSON HpoConfigProperty where
  toJSON HpoConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AlgorithmHyperParameterRanges"
                 Prelude.<$> algorithmHyperParameterRanges,
               (JSON..=) "HpoObjective" Prelude.<$> hpoObjective,
               (JSON..=) "HpoResourceConfig" Prelude.<$> hpoResourceConfig]))
instance Property "AlgorithmHyperParameterRanges" HpoConfigProperty where
  type PropertyType "AlgorithmHyperParameterRanges" HpoConfigProperty = AlgorithmHyperParameterRangesProperty
  set newValue HpoConfigProperty {..}
    = HpoConfigProperty
        {algorithmHyperParameterRanges = Prelude.pure newValue, ..}
instance Property "HpoObjective" HpoConfigProperty where
  type PropertyType "HpoObjective" HpoConfigProperty = HpoObjectiveProperty
  set newValue HpoConfigProperty {..}
    = HpoConfigProperty {hpoObjective = Prelude.pure newValue, ..}
instance Property "HpoResourceConfig" HpoConfigProperty where
  type PropertyType "HpoResourceConfig" HpoConfigProperty = HpoResourceConfigProperty
  set newValue HpoConfigProperty {..}
    = HpoConfigProperty {hpoResourceConfig = Prelude.pure newValue, ..}