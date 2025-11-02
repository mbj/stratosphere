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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-driftcheckbias.html>
    DriftCheckBiasProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-driftcheckbias.html#cfn-sagemaker-modelpackage-driftcheckbias-configfile>
                            configFile :: (Prelude.Maybe FileSourceProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-driftcheckbias.html#cfn-sagemaker-modelpackage-driftcheckbias-posttrainingconstraints>
                            postTrainingConstraints :: (Prelude.Maybe MetricsSourceProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-driftcheckbias.html#cfn-sagemaker-modelpackage-driftcheckbias-pretrainingconstraints>
                            preTrainingConstraints :: (Prelude.Maybe MetricsSourceProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDriftCheckBiasProperty :: DriftCheckBiasProperty
mkDriftCheckBiasProperty
  = DriftCheckBiasProperty
      {haddock_workaround_ = (), configFile = Prelude.Nothing,
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