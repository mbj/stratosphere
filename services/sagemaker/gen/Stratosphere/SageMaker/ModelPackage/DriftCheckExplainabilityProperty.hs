module Stratosphere.SageMaker.ModelPackage.DriftCheckExplainabilityProperty (
        module Exports, DriftCheckExplainabilityProperty(..),
        mkDriftCheckExplainabilityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.FileSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.MetricsSourceProperty as Exports
import Stratosphere.ResourceProperties
data DriftCheckExplainabilityProperty
  = DriftCheckExplainabilityProperty {configFile :: (Prelude.Maybe FileSourceProperty),
                                      constraints :: (Prelude.Maybe MetricsSourceProperty)}
mkDriftCheckExplainabilityProperty ::
  DriftCheckExplainabilityProperty
mkDriftCheckExplainabilityProperty
  = DriftCheckExplainabilityProperty
      {configFile = Prelude.Nothing, constraints = Prelude.Nothing}
instance ToResourceProperties DriftCheckExplainabilityProperty where
  toResourceProperties DriftCheckExplainabilityProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.DriftCheckExplainability",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConfigFile" Prelude.<$> configFile,
                            (JSON..=) "Constraints" Prelude.<$> constraints])}
instance JSON.ToJSON DriftCheckExplainabilityProperty where
  toJSON DriftCheckExplainabilityProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConfigFile" Prelude.<$> configFile,
               (JSON..=) "Constraints" Prelude.<$> constraints]))
instance Property "ConfigFile" DriftCheckExplainabilityProperty where
  type PropertyType "ConfigFile" DriftCheckExplainabilityProperty = FileSourceProperty
  set newValue DriftCheckExplainabilityProperty {..}
    = DriftCheckExplainabilityProperty
        {configFile = Prelude.pure newValue, ..}
instance Property "Constraints" DriftCheckExplainabilityProperty where
  type PropertyType "Constraints" DriftCheckExplainabilityProperty = MetricsSourceProperty
  set newValue DriftCheckExplainabilityProperty {..}
    = DriftCheckExplainabilityProperty
        {constraints = Prelude.pure newValue, ..}