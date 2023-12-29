module Stratosphere.Personalize.Solution.SolutionConfigProperty (
        module Exports, SolutionConfigProperty(..),
        mkSolutionConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Personalize.Solution.AutoMLConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Personalize.Solution.HpoConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SolutionConfigProperty
  = SolutionConfigProperty {algorithmHyperParameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                            autoMLConfig :: (Prelude.Maybe AutoMLConfigProperty),
                            eventValueThreshold :: (Prelude.Maybe (Value Prelude.Text)),
                            featureTransformationParameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                            hpoConfig :: (Prelude.Maybe HpoConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSolutionConfigProperty :: SolutionConfigProperty
mkSolutionConfigProperty
  = SolutionConfigProperty
      {algorithmHyperParameters = Prelude.Nothing,
       autoMLConfig = Prelude.Nothing,
       eventValueThreshold = Prelude.Nothing,
       featureTransformationParameters = Prelude.Nothing,
       hpoConfig = Prelude.Nothing}
instance ToResourceProperties SolutionConfigProperty where
  toResourceProperties SolutionConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Personalize::Solution.SolutionConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AlgorithmHyperParameters"
                              Prelude.<$> algorithmHyperParameters,
                            (JSON..=) "AutoMLConfig" Prelude.<$> autoMLConfig,
                            (JSON..=) "EventValueThreshold" Prelude.<$> eventValueThreshold,
                            (JSON..=) "FeatureTransformationParameters"
                              Prelude.<$> featureTransformationParameters,
                            (JSON..=) "HpoConfig" Prelude.<$> hpoConfig])}
instance JSON.ToJSON SolutionConfigProperty where
  toJSON SolutionConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AlgorithmHyperParameters"
                 Prelude.<$> algorithmHyperParameters,
               (JSON..=) "AutoMLConfig" Prelude.<$> autoMLConfig,
               (JSON..=) "EventValueThreshold" Prelude.<$> eventValueThreshold,
               (JSON..=) "FeatureTransformationParameters"
                 Prelude.<$> featureTransformationParameters,
               (JSON..=) "HpoConfig" Prelude.<$> hpoConfig]))
instance Property "AlgorithmHyperParameters" SolutionConfigProperty where
  type PropertyType "AlgorithmHyperParameters" SolutionConfigProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue SolutionConfigProperty {..}
    = SolutionConfigProperty
        {algorithmHyperParameters = Prelude.pure newValue, ..}
instance Property "AutoMLConfig" SolutionConfigProperty where
  type PropertyType "AutoMLConfig" SolutionConfigProperty = AutoMLConfigProperty
  set newValue SolutionConfigProperty {..}
    = SolutionConfigProperty {autoMLConfig = Prelude.pure newValue, ..}
instance Property "EventValueThreshold" SolutionConfigProperty where
  type PropertyType "EventValueThreshold" SolutionConfigProperty = Value Prelude.Text
  set newValue SolutionConfigProperty {..}
    = SolutionConfigProperty
        {eventValueThreshold = Prelude.pure newValue, ..}
instance Property "FeatureTransformationParameters" SolutionConfigProperty where
  type PropertyType "FeatureTransformationParameters" SolutionConfigProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue SolutionConfigProperty {..}
    = SolutionConfigProperty
        {featureTransformationParameters = Prelude.pure newValue, ..}
instance Property "HpoConfig" SolutionConfigProperty where
  type PropertyType "HpoConfig" SolutionConfigProperty = HpoConfigProperty
  set newValue SolutionConfigProperty {..}
    = SolutionConfigProperty {hpoConfig = Prelude.pure newValue, ..}