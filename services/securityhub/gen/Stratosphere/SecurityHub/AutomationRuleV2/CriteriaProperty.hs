module Stratosphere.SecurityHub.AutomationRuleV2.CriteriaProperty (
        module Exports, CriteriaProperty(..), mkCriteriaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityHub.AutomationRuleV2.OcsfFindingFiltersProperty as Exports
import Stratosphere.ResourceProperties
data CriteriaProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-criteria.html>
    CriteriaProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-criteria.html#cfn-securityhub-automationrulev2-criteria-ocsffindingcriteria>
                      ocsfFindingCriteria :: (Prelude.Maybe OcsfFindingFiltersProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCriteriaProperty :: CriteriaProperty
mkCriteriaProperty
  = CriteriaProperty
      {haddock_workaround_ = (), ocsfFindingCriteria = Prelude.Nothing}
instance ToResourceProperties CriteriaProperty where
  toResourceProperties CriteriaProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::AutomationRuleV2.Criteria",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OcsfFindingCriteria" Prelude.<$> ocsfFindingCriteria])}
instance JSON.ToJSON CriteriaProperty where
  toJSON CriteriaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OcsfFindingCriteria" Prelude.<$> ocsfFindingCriteria]))
instance Property "OcsfFindingCriteria" CriteriaProperty where
  type PropertyType "OcsfFindingCriteria" CriteriaProperty = OcsfFindingFiltersProperty
  set newValue CriteriaProperty {..}
    = CriteriaProperty
        {ocsfFindingCriteria = Prelude.pure newValue, ..}