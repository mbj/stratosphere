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
  = HpoConfigProperty {algorithmHyperParameterRanges :: (Prelude.Maybe AlgorithmHyperParameterRangesProperty),
                       hpoObjective :: (Prelude.Maybe HpoObjectiveProperty),
                       hpoResourceConfig :: (Prelude.Maybe HpoResourceConfigProperty)}
mkHpoConfigProperty :: HpoConfigProperty
mkHpoConfigProperty
  = HpoConfigProperty
      {algorithmHyperParameterRanges = Prelude.Nothing,
       hpoObjective = Prelude.Nothing,
       hpoResourceConfig = Prelude.Nothing}
instance ToResourceProperties HpoConfigProperty where
  toResourceProperties HpoConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Personalize::Solution.HpoConfig",
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