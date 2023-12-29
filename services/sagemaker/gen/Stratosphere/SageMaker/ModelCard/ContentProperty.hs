module Stratosphere.SageMaker.ModelCard.ContentProperty (
        module Exports, ContentProperty(..), mkContentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelCard.AdditionalInformationProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelCard.BusinessDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelCard.EvaluationDetailProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelCard.IntendedUsesProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelCard.ModelOverviewProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelCard.ModelPackageDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelCard.TrainingDetailsProperty as Exports
import Stratosphere.ResourceProperties
data ContentProperty
  = ContentProperty {additionalInformation :: (Prelude.Maybe AdditionalInformationProperty),
                     businessDetails :: (Prelude.Maybe BusinessDetailsProperty),
                     evaluationDetails :: (Prelude.Maybe [EvaluationDetailProperty]),
                     intendedUses :: (Prelude.Maybe IntendedUsesProperty),
                     modelOverview :: (Prelude.Maybe ModelOverviewProperty),
                     modelPackageDetails :: (Prelude.Maybe ModelPackageDetailsProperty),
                     trainingDetails :: (Prelude.Maybe TrainingDetailsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContentProperty :: ContentProperty
mkContentProperty
  = ContentProperty
      {additionalInformation = Prelude.Nothing,
       businessDetails = Prelude.Nothing,
       evaluationDetails = Prelude.Nothing,
       intendedUses = Prelude.Nothing, modelOverview = Prelude.Nothing,
       modelPackageDetails = Prelude.Nothing,
       trainingDetails = Prelude.Nothing}
instance ToResourceProperties ContentProperty where
  toResourceProperties ContentProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelCard.Content",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdditionalInformation"
                              Prelude.<$> additionalInformation,
                            (JSON..=) "BusinessDetails" Prelude.<$> businessDetails,
                            (JSON..=) "EvaluationDetails" Prelude.<$> evaluationDetails,
                            (JSON..=) "IntendedUses" Prelude.<$> intendedUses,
                            (JSON..=) "ModelOverview" Prelude.<$> modelOverview,
                            (JSON..=) "ModelPackageDetails" Prelude.<$> modelPackageDetails,
                            (JSON..=) "TrainingDetails" Prelude.<$> trainingDetails])}
instance JSON.ToJSON ContentProperty where
  toJSON ContentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdditionalInformation"
                 Prelude.<$> additionalInformation,
               (JSON..=) "BusinessDetails" Prelude.<$> businessDetails,
               (JSON..=) "EvaluationDetails" Prelude.<$> evaluationDetails,
               (JSON..=) "IntendedUses" Prelude.<$> intendedUses,
               (JSON..=) "ModelOverview" Prelude.<$> modelOverview,
               (JSON..=) "ModelPackageDetails" Prelude.<$> modelPackageDetails,
               (JSON..=) "TrainingDetails" Prelude.<$> trainingDetails]))
instance Property "AdditionalInformation" ContentProperty where
  type PropertyType "AdditionalInformation" ContentProperty = AdditionalInformationProperty
  set newValue ContentProperty {..}
    = ContentProperty
        {additionalInformation = Prelude.pure newValue, ..}
instance Property "BusinessDetails" ContentProperty where
  type PropertyType "BusinessDetails" ContentProperty = BusinessDetailsProperty
  set newValue ContentProperty {..}
    = ContentProperty {businessDetails = Prelude.pure newValue, ..}
instance Property "EvaluationDetails" ContentProperty where
  type PropertyType "EvaluationDetails" ContentProperty = [EvaluationDetailProperty]
  set newValue ContentProperty {..}
    = ContentProperty {evaluationDetails = Prelude.pure newValue, ..}
instance Property "IntendedUses" ContentProperty where
  type PropertyType "IntendedUses" ContentProperty = IntendedUsesProperty
  set newValue ContentProperty {..}
    = ContentProperty {intendedUses = Prelude.pure newValue, ..}
instance Property "ModelOverview" ContentProperty where
  type PropertyType "ModelOverview" ContentProperty = ModelOverviewProperty
  set newValue ContentProperty {..}
    = ContentProperty {modelOverview = Prelude.pure newValue, ..}
instance Property "ModelPackageDetails" ContentProperty where
  type PropertyType "ModelPackageDetails" ContentProperty = ModelPackageDetailsProperty
  set newValue ContentProperty {..}
    = ContentProperty {modelPackageDetails = Prelude.pure newValue, ..}
instance Property "TrainingDetails" ContentProperty where
  type PropertyType "TrainingDetails" ContentProperty = TrainingDetailsProperty
  set newValue ContentProperty {..}
    = ContentProperty {trainingDetails = Prelude.pure newValue, ..}