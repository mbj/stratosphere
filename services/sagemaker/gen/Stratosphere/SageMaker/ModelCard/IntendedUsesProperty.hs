module Stratosphere.SageMaker.ModelCard.IntendedUsesProperty (
        IntendedUsesProperty(..), mkIntendedUsesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IntendedUsesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-intendeduses.html>
    IntendedUsesProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-intendeduses.html#cfn-sagemaker-modelcard-intendeduses-explanationsforriskrating>
                          explanationsForRiskRating :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-intendeduses.html#cfn-sagemaker-modelcard-intendeduses-factorsaffectingmodelefficiency>
                          factorsAffectingModelEfficiency :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-intendeduses.html#cfn-sagemaker-modelcard-intendeduses-intendeduses>
                          intendedUses :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-intendeduses.html#cfn-sagemaker-modelcard-intendeduses-purposeofmodel>
                          purposeOfModel :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-intendeduses.html#cfn-sagemaker-modelcard-intendeduses-riskrating>
                          riskRating :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIntendedUsesProperty :: IntendedUsesProperty
mkIntendedUsesProperty
  = IntendedUsesProperty
      {haddock_workaround_ = (),
       explanationsForRiskRating = Prelude.Nothing,
       factorsAffectingModelEfficiency = Prelude.Nothing,
       intendedUses = Prelude.Nothing, purposeOfModel = Prelude.Nothing,
       riskRating = Prelude.Nothing}
instance ToResourceProperties IntendedUsesProperty where
  toResourceProperties IntendedUsesProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelCard.IntendedUses",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ExplanationsForRiskRating"
                              Prelude.<$> explanationsForRiskRating,
                            (JSON..=) "FactorsAffectingModelEfficiency"
                              Prelude.<$> factorsAffectingModelEfficiency,
                            (JSON..=) "IntendedUses" Prelude.<$> intendedUses,
                            (JSON..=) "PurposeOfModel" Prelude.<$> purposeOfModel,
                            (JSON..=) "RiskRating" Prelude.<$> riskRating])}
instance JSON.ToJSON IntendedUsesProperty where
  toJSON IntendedUsesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ExplanationsForRiskRating"
                 Prelude.<$> explanationsForRiskRating,
               (JSON..=) "FactorsAffectingModelEfficiency"
                 Prelude.<$> factorsAffectingModelEfficiency,
               (JSON..=) "IntendedUses" Prelude.<$> intendedUses,
               (JSON..=) "PurposeOfModel" Prelude.<$> purposeOfModel,
               (JSON..=) "RiskRating" Prelude.<$> riskRating]))
instance Property "ExplanationsForRiskRating" IntendedUsesProperty where
  type PropertyType "ExplanationsForRiskRating" IntendedUsesProperty = Value Prelude.Text
  set newValue IntendedUsesProperty {..}
    = IntendedUsesProperty
        {explanationsForRiskRating = Prelude.pure newValue, ..}
instance Property "FactorsAffectingModelEfficiency" IntendedUsesProperty where
  type PropertyType "FactorsAffectingModelEfficiency" IntendedUsesProperty = Value Prelude.Text
  set newValue IntendedUsesProperty {..}
    = IntendedUsesProperty
        {factorsAffectingModelEfficiency = Prelude.pure newValue, ..}
instance Property "IntendedUses" IntendedUsesProperty where
  type PropertyType "IntendedUses" IntendedUsesProperty = Value Prelude.Text
  set newValue IntendedUsesProperty {..}
    = IntendedUsesProperty {intendedUses = Prelude.pure newValue, ..}
instance Property "PurposeOfModel" IntendedUsesProperty where
  type PropertyType "PurposeOfModel" IntendedUsesProperty = Value Prelude.Text
  set newValue IntendedUsesProperty {..}
    = IntendedUsesProperty {purposeOfModel = Prelude.pure newValue, ..}
instance Property "RiskRating" IntendedUsesProperty where
  type PropertyType "RiskRating" IntendedUsesProperty = Value Prelude.Text
  set newValue IntendedUsesProperty {..}
    = IntendedUsesProperty {riskRating = Prelude.pure newValue, ..}