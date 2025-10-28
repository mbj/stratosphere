module Stratosphere.SSMIncidents.ResponsePlan.ActionProperty (
        module Exports, ActionProperty(..), mkActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSMIncidents.ResponsePlan.SsmAutomationProperty as Exports
import Stratosphere.ResourceProperties
data ActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmincidents-responseplan-action.html>
    ActionProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmincidents-responseplan-action.html#cfn-ssmincidents-responseplan-action-ssmautomation>
                    ssmAutomation :: (Prelude.Maybe SsmAutomationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActionProperty :: ActionProperty
mkActionProperty
  = ActionProperty
      {haddock_workaround_ = (), ssmAutomation = Prelude.Nothing}
instance ToResourceProperties ActionProperty where
  toResourceProperties ActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMIncidents::ResponsePlan.Action",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SsmAutomation" Prelude.<$> ssmAutomation])}
instance JSON.ToJSON ActionProperty where
  toJSON ActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SsmAutomation" Prelude.<$> ssmAutomation]))
instance Property "SsmAutomation" ActionProperty where
  type PropertyType "SsmAutomation" ActionProperty = SsmAutomationProperty
  set newValue ActionProperty {..}
    = ActionProperty {ssmAutomation = Prelude.pure newValue, ..}