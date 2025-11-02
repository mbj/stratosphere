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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-findingcriteria.html>
    FindingCriteriaProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-findingcriteria.html#cfn-guardduty-filter-findingcriteria-criterion>
                             criterion :: (Prelude.Maybe (Prelude.Map Prelude.Text ConditionProperty))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFindingCriteriaProperty :: FindingCriteriaProperty
mkFindingCriteriaProperty
  = FindingCriteriaProperty
      {haddock_workaround_ = (), criterion = Prelude.Nothing}
instance ToResourceProperties FindingCriteriaProperty where
  toResourceProperties FindingCriteriaProperty {..}
    = ResourceProperties
        {awsType = "AWS::GuardDuty::Filter.FindingCriteria",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Criterion" Prelude.<$> criterion])}
instance JSON.ToJSON FindingCriteriaProperty where
  toJSON FindingCriteriaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Criterion" Prelude.<$> criterion]))
instance Property "Criterion" FindingCriteriaProperty where
  type PropertyType "Criterion" FindingCriteriaProperty = Prelude.Map Prelude.Text ConditionProperty
  set newValue FindingCriteriaProperty {..}
    = FindingCriteriaProperty {criterion = Prelude.pure newValue, ..}