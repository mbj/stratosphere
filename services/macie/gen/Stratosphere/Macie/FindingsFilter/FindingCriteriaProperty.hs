module Stratosphere.Macie.FindingsFilter.FindingCriteriaProperty (
        module Exports, FindingCriteriaProperty(..),
        mkFindingCriteriaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Macie.FindingsFilter.CriterionAdditionalPropertiesProperty as Exports
import Stratosphere.ResourceProperties
data FindingCriteriaProperty
  = FindingCriteriaProperty {criterion :: (Prelude.Maybe (Prelude.Map Prelude.Text CriterionAdditionalPropertiesProperty))}
mkFindingCriteriaProperty :: FindingCriteriaProperty
mkFindingCriteriaProperty
  = FindingCriteriaProperty {criterion = Prelude.Nothing}
instance ToResourceProperties FindingCriteriaProperty where
  toResourceProperties FindingCriteriaProperty {..}
    = ResourceProperties
        {awsType = "AWS::Macie::FindingsFilter.FindingCriteria",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Criterion" Prelude.<$> criterion])}
instance JSON.ToJSON FindingCriteriaProperty where
  toJSON FindingCriteriaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Criterion" Prelude.<$> criterion]))
instance Property "Criterion" FindingCriteriaProperty where
  type PropertyType "Criterion" FindingCriteriaProperty = Prelude.Map Prelude.Text CriterionAdditionalPropertiesProperty
  set newValue FindingCriteriaProperty {}
    = FindingCriteriaProperty {criterion = Prelude.pure newValue, ..}