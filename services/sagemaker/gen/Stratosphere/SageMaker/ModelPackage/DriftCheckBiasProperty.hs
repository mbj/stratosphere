module Stratosphere.SageMaker.ModelPackage.DriftCheckBiasProperty (
        module Exports, DriftCheckBiasProperty(..),
        mkDriftCheckBiasProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.FileSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.MetricsSourceProperty as Exports
import Stratosphere.ResourceProperties
data DriftCheckBiasProperty
  = DriftCheckBiasProperty {configFile :: (Prelude.Maybe FileSourceProperty),
                            postTrainingConstraints :: (Prelude.Maybe MetricsSourceProperty),
                            preTrainingConstraints :: (Prelude.Maybe MetricsSourceProperty)}
mkDriftCheckBiasProperty :: DriftCheckBiasProperty
mkDriftCheckBiasProperty
  = DriftCheckBiasProperty
      {configFile = Prelude.Nothing,
       postTrainingConstraints = Prelude.Nothing,
       preTrainingConstraints = Prelude.Nothing}
instance ToResourceProperties DriftCheckBiasProperty where
  toResourceProperties DriftCheckBiasProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.DriftCheckBias",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConfigFile" Prelude.<$> configFile,
                            (JSON..=) "PostTrainingConstraints"
                              Prelude.<$> postTrainingConstraints,
                            (JSON..=) "PreTrainingConstraints"
                              Prelude.<$> preTrainingConstraints])}
instance JSON.ToJSON DriftCheckBiasProperty where
  toJSON DriftCheckBiasProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConfigFile" Prelude.<$> configFile,
               (JSON..=) "PostTrainingConstraints"
                 Prelude.<$> postTrainingConstraints,
               (JSON..=) "PreTrainingConstraints"
                 Prelude.<$> preTrainingConstraints]))
instance Property "ConfigFile" DriftCheckBiasProperty where
  type PropertyType "ConfigFile" DriftCheckBiasProperty = FileSourceProperty
  set newValue DriftCheckBiasProperty {..}
    = DriftCheckBiasProperty {configFile = Prelude.pure newValue, ..}
instance Property "PostTrainingConstraints" DriftCheckBiasProperty where
  type PropertyType "PostTrainingConstraints" DriftCheckBiasProperty = MetricsSourceProperty
  set newValue DriftCheckBiasProperty {..}
    = DriftCheckBiasProperty
        {postTrainingConstraints = Prelude.pure newValue, ..}
instance Property "PreTrainingConstraints" DriftCheckBiasProperty where
  type PropertyType "PreTrainingConstraints" DriftCheckBiasProperty = MetricsSourceProperty
  set newValue DriftCheckBiasProperty {..}
    = DriftCheckBiasProperty
        {preTrainingConstraints = Prelude.pure newValue, ..}