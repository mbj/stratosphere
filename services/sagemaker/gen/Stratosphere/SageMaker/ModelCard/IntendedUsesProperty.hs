module Stratosphere.SageMaker.ModelCard.IntendedUsesProperty (
        IntendedUsesProperty(..), mkIntendedUsesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IntendedUsesProperty
  = IntendedUsesProperty {explanationsForRiskRating :: (Prelude.Maybe (Value Prelude.Text)),
                          factorsAffectingModelEfficiency :: (Prelude.Maybe (Value Prelude.Text)),
                          intendedUses :: (Prelude.Maybe (Value Prelude.Text)),
                          purposeOfModel :: (Prelude.Maybe (Value Prelude.Text)),
                          riskRating :: (Prelude.Maybe (Value Prelude.Text))}
mkIntendedUsesProperty :: IntendedUsesProperty
mkIntendedUsesProperty
  = IntendedUsesProperty
      {explanationsForRiskRating = Prelude.Nothing,
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