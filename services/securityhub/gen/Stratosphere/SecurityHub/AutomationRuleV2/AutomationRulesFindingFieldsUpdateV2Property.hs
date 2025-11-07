module Stratosphere.SecurityHub.AutomationRuleV2.AutomationRulesFindingFieldsUpdateV2Property (
        AutomationRulesFindingFieldsUpdateV2Property(..),
        mkAutomationRulesFindingFieldsUpdateV2Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutomationRulesFindingFieldsUpdateV2Property
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-automationrulesfindingfieldsupdatev2.html>
    AutomationRulesFindingFieldsUpdateV2Property {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-automationrulesfindingfieldsupdatev2.html#cfn-securityhub-automationrulev2-automationrulesfindingfieldsupdatev2-comment>
                                                  comment :: (Prelude.Maybe (Value Prelude.Text)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-automationrulesfindingfieldsupdatev2.html#cfn-securityhub-automationrulev2-automationrulesfindingfieldsupdatev2-severityid>
                                                  severityId :: (Prelude.Maybe (Value Prelude.Integer)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-automationrulesfindingfieldsupdatev2.html#cfn-securityhub-automationrulev2-automationrulesfindingfieldsupdatev2-statusid>
                                                  statusId :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutomationRulesFindingFieldsUpdateV2Property ::
  AutomationRulesFindingFieldsUpdateV2Property
mkAutomationRulesFindingFieldsUpdateV2Property
  = AutomationRulesFindingFieldsUpdateV2Property
      {haddock_workaround_ = (), comment = Prelude.Nothing,
       severityId = Prelude.Nothing, statusId = Prelude.Nothing}
instance ToResourceProperties AutomationRulesFindingFieldsUpdateV2Property where
  toResourceProperties
    AutomationRulesFindingFieldsUpdateV2Property {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::AutomationRuleV2.AutomationRulesFindingFieldsUpdateV2",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Comment" Prelude.<$> comment,
                            (JSON..=) "SeverityId" Prelude.<$> severityId,
                            (JSON..=) "StatusId" Prelude.<$> statusId])}
instance JSON.ToJSON AutomationRulesFindingFieldsUpdateV2Property where
  toJSON AutomationRulesFindingFieldsUpdateV2Property {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Comment" Prelude.<$> comment,
               (JSON..=) "SeverityId" Prelude.<$> severityId,
               (JSON..=) "StatusId" Prelude.<$> statusId]))
instance Property "Comment" AutomationRulesFindingFieldsUpdateV2Property where
  type PropertyType "Comment" AutomationRulesFindingFieldsUpdateV2Property = Value Prelude.Text
  set newValue AutomationRulesFindingFieldsUpdateV2Property {..}
    = AutomationRulesFindingFieldsUpdateV2Property
        {comment = Prelude.pure newValue, ..}
instance Property "SeverityId" AutomationRulesFindingFieldsUpdateV2Property where
  type PropertyType "SeverityId" AutomationRulesFindingFieldsUpdateV2Property = Value Prelude.Integer
  set newValue AutomationRulesFindingFieldsUpdateV2Property {..}
    = AutomationRulesFindingFieldsUpdateV2Property
        {severityId = Prelude.pure newValue, ..}
instance Property "StatusId" AutomationRulesFindingFieldsUpdateV2Property where
  type PropertyType "StatusId" AutomationRulesFindingFieldsUpdateV2Property = Value Prelude.Integer
  set newValue AutomationRulesFindingFieldsUpdateV2Property {..}
    = AutomationRulesFindingFieldsUpdateV2Property
        {statusId = Prelude.pure newValue, ..}