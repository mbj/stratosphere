module Stratosphere.SSMContacts.Plan (
        module Exports, Plan(..), mkPlan
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSMContacts.Plan.StageProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Plan
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmcontacts-plan.html>
    Plan {haddock_workaround_ :: (),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmcontacts-plan.html#cfn-ssmcontacts-plan-contactid>
          contactId :: (Value Prelude.Text),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmcontacts-plan.html#cfn-ssmcontacts-plan-rotationids>
          rotationIds :: (Prelude.Maybe (ValueList Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssmcontacts-plan.html#cfn-ssmcontacts-plan-stages>
          stages :: (Prelude.Maybe [StageProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPlan :: Value Prelude.Text -> Plan
mkPlan contactId
  = Plan
      {haddock_workaround_ = (), contactId = contactId,
       rotationIds = Prelude.Nothing, stages = Prelude.Nothing}
instance ToResourceProperties Plan where
  toResourceProperties Plan {..}
    = ResourceProperties
        {awsType = "AWS::SSMContacts::Plan", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ContactId" JSON..= contactId]
                           (Prelude.catMaybes
                              [(JSON..=) "RotationIds" Prelude.<$> rotationIds,
                               (JSON..=) "Stages" Prelude.<$> stages]))}
instance JSON.ToJSON Plan where
  toJSON Plan {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ContactId" JSON..= contactId]
              (Prelude.catMaybes
                 [(JSON..=) "RotationIds" Prelude.<$> rotationIds,
                  (JSON..=) "Stages" Prelude.<$> stages])))
instance Property "ContactId" Plan where
  type PropertyType "ContactId" Plan = Value Prelude.Text
  set newValue Plan {..} = Plan {contactId = newValue, ..}
instance Property "RotationIds" Plan where
  type PropertyType "RotationIds" Plan = ValueList Prelude.Text
  set newValue Plan {..}
    = Plan {rotationIds = Prelude.pure newValue, ..}
instance Property "Stages" Plan where
  type PropertyType "Stages" Plan = [StageProperty]
  set newValue Plan {..} = Plan {stages = Prelude.pure newValue, ..}