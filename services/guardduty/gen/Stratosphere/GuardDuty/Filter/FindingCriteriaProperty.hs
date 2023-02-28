module Stratosphere.GuardDuty.Filter.FindingCriteriaProperty (
        module Exports, FindingCriteriaProperty(..),
        mkFindingCriteriaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GuardDuty.Filter.ConditionProperty as Exports
import Stratosphere.ResourceProperties
data FindingCriteriaProperty
  = FindingCriteriaProperty {criterion :: (Prelude.Maybe JSON.Object),
                             itemType :: (Prelude.Maybe ConditionProperty)}
mkFindingCriteriaProperty :: FindingCriteriaProperty
mkFindingCriteriaProperty
  = FindingCriteriaProperty
      {criterion = Prelude.Nothing, itemType = Prelude.Nothing}
instance ToResourceProperties FindingCriteriaProperty where
  toResourceProperties FindingCriteriaProperty {..}
    = ResourceProperties
        {awsType = "AWS::GuardDuty::Filter.FindingCriteria",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Criterion" Prelude.<$> criterion,
                            (JSON..=) "ItemType" Prelude.<$> itemType])}
instance JSON.ToJSON FindingCriteriaProperty where
  toJSON FindingCriteriaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Criterion" Prelude.<$> criterion,
               (JSON..=) "ItemType" Prelude.<$> itemType]))
instance Property "Criterion" FindingCriteriaProperty where
  type PropertyType "Criterion" FindingCriteriaProperty = JSON.Object
  set newValue FindingCriteriaProperty {..}
    = FindingCriteriaProperty {criterion = Prelude.pure newValue, ..}
instance Property "ItemType" FindingCriteriaProperty where
  type PropertyType "ItemType" FindingCriteriaProperty = ConditionProperty
  set newValue FindingCriteriaProperty {..}
    = FindingCriteriaProperty {itemType = Prelude.pure newValue, ..}