module Stratosphere.SecurityHub.AutomationRule.AutomationRulesFindingFieldsUpdateProperty (
        module Exports, AutomationRulesFindingFieldsUpdateProperty(..),
        mkAutomationRulesFindingFieldsUpdateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityHub.AutomationRule.NoteUpdateProperty as Exports
import {-# SOURCE #-} Stratosphere.SecurityHub.AutomationRule.RelatedFindingProperty as Exports
import {-# SOURCE #-} Stratosphere.SecurityHub.AutomationRule.SeverityUpdateProperty as Exports
import {-# SOURCE #-} Stratosphere.SecurityHub.AutomationRule.WorkflowUpdateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutomationRulesFindingFieldsUpdateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfieldsupdate.html>
    AutomationRulesFindingFieldsUpdateProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfieldsupdate.html#cfn-securityhub-automationrule-automationrulesfindingfieldsupdate-confidence>
                                                confidence :: (Prelude.Maybe (Value Prelude.Integer)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfieldsupdate.html#cfn-securityhub-automationrule-automationrulesfindingfieldsupdate-criticality>
                                                criticality :: (Prelude.Maybe (Value Prelude.Integer)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfieldsupdate.html#cfn-securityhub-automationrule-automationrulesfindingfieldsupdate-note>
                                                note :: (Prelude.Maybe NoteUpdateProperty),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfieldsupdate.html#cfn-securityhub-automationrule-automationrulesfindingfieldsupdate-relatedfindings>
                                                relatedFindings :: (Prelude.Maybe [RelatedFindingProperty]),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfieldsupdate.html#cfn-securityhub-automationrule-automationrulesfindingfieldsupdate-severity>
                                                severity :: (Prelude.Maybe SeverityUpdateProperty),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfieldsupdate.html#cfn-securityhub-automationrule-automationrulesfindingfieldsupdate-types>
                                                types :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfieldsupdate.html#cfn-securityhub-automationrule-automationrulesfindingfieldsupdate-userdefinedfields>
                                                userDefinedFields :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfieldsupdate.html#cfn-securityhub-automationrule-automationrulesfindingfieldsupdate-verificationstate>
                                                verificationState :: (Prelude.Maybe (Value Prelude.Text)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfieldsupdate.html#cfn-securityhub-automationrule-automationrulesfindingfieldsupdate-workflow>
                                                workflow :: (Prelude.Maybe WorkflowUpdateProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutomationRulesFindingFieldsUpdateProperty ::
  AutomationRulesFindingFieldsUpdateProperty
mkAutomationRulesFindingFieldsUpdateProperty
  = AutomationRulesFindingFieldsUpdateProperty
      {haddock_workaround_ = (), confidence = Prelude.Nothing,
       criticality = Prelude.Nothing, note = Prelude.Nothing,
       relatedFindings = Prelude.Nothing, severity = Prelude.Nothing,
       types = Prelude.Nothing, userDefinedFields = Prelude.Nothing,
       verificationState = Prelude.Nothing, workflow = Prelude.Nothing}
instance ToResourceProperties AutomationRulesFindingFieldsUpdateProperty where
  toResourceProperties
    AutomationRulesFindingFieldsUpdateProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::AutomationRule.AutomationRulesFindingFieldsUpdate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Confidence" Prelude.<$> confidence,
                            (JSON..=) "Criticality" Prelude.<$> criticality,
                            (JSON..=) "Note" Prelude.<$> note,
                            (JSON..=) "RelatedFindings" Prelude.<$> relatedFindings,
                            (JSON..=) "Severity" Prelude.<$> severity,
                            (JSON..=) "Types" Prelude.<$> types,
                            (JSON..=) "UserDefinedFields" Prelude.<$> userDefinedFields,
                            (JSON..=) "VerificationState" Prelude.<$> verificationState,
                            (JSON..=) "Workflow" Prelude.<$> workflow])}
instance JSON.ToJSON AutomationRulesFindingFieldsUpdateProperty where
  toJSON AutomationRulesFindingFieldsUpdateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Confidence" Prelude.<$> confidence,
               (JSON..=) "Criticality" Prelude.<$> criticality,
               (JSON..=) "Note" Prelude.<$> note,
               (JSON..=) "RelatedFindings" Prelude.<$> relatedFindings,
               (JSON..=) "Severity" Prelude.<$> severity,
               (JSON..=) "Types" Prelude.<$> types,
               (JSON..=) "UserDefinedFields" Prelude.<$> userDefinedFields,
               (JSON..=) "VerificationState" Prelude.<$> verificationState,
               (JSON..=) "Workflow" Prelude.<$> workflow]))
instance Property "Confidence" AutomationRulesFindingFieldsUpdateProperty where
  type PropertyType "Confidence" AutomationRulesFindingFieldsUpdateProperty = Value Prelude.Integer
  set newValue AutomationRulesFindingFieldsUpdateProperty {..}
    = AutomationRulesFindingFieldsUpdateProperty
        {confidence = Prelude.pure newValue, ..}
instance Property "Criticality" AutomationRulesFindingFieldsUpdateProperty where
  type PropertyType "Criticality" AutomationRulesFindingFieldsUpdateProperty = Value Prelude.Integer
  set newValue AutomationRulesFindingFieldsUpdateProperty {..}
    = AutomationRulesFindingFieldsUpdateProperty
        {criticality = Prelude.pure newValue, ..}
instance Property "Note" AutomationRulesFindingFieldsUpdateProperty where
  type PropertyType "Note" AutomationRulesFindingFieldsUpdateProperty = NoteUpdateProperty
  set newValue AutomationRulesFindingFieldsUpdateProperty {..}
    = AutomationRulesFindingFieldsUpdateProperty
        {note = Prelude.pure newValue, ..}
instance Property "RelatedFindings" AutomationRulesFindingFieldsUpdateProperty where
  type PropertyType "RelatedFindings" AutomationRulesFindingFieldsUpdateProperty = [RelatedFindingProperty]
  set newValue AutomationRulesFindingFieldsUpdateProperty {..}
    = AutomationRulesFindingFieldsUpdateProperty
        {relatedFindings = Prelude.pure newValue, ..}
instance Property "Severity" AutomationRulesFindingFieldsUpdateProperty where
  type PropertyType "Severity" AutomationRulesFindingFieldsUpdateProperty = SeverityUpdateProperty
  set newValue AutomationRulesFindingFieldsUpdateProperty {..}
    = AutomationRulesFindingFieldsUpdateProperty
        {severity = Prelude.pure newValue, ..}
instance Property "Types" AutomationRulesFindingFieldsUpdateProperty where
  type PropertyType "Types" AutomationRulesFindingFieldsUpdateProperty = ValueList Prelude.Text
  set newValue AutomationRulesFindingFieldsUpdateProperty {..}
    = AutomationRulesFindingFieldsUpdateProperty
        {types = Prelude.pure newValue, ..}
instance Property "UserDefinedFields" AutomationRulesFindingFieldsUpdateProperty where
  type PropertyType "UserDefinedFields" AutomationRulesFindingFieldsUpdateProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue AutomationRulesFindingFieldsUpdateProperty {..}
    = AutomationRulesFindingFieldsUpdateProperty
        {userDefinedFields = Prelude.pure newValue, ..}
instance Property "VerificationState" AutomationRulesFindingFieldsUpdateProperty where
  type PropertyType "VerificationState" AutomationRulesFindingFieldsUpdateProperty = Value Prelude.Text
  set newValue AutomationRulesFindingFieldsUpdateProperty {..}
    = AutomationRulesFindingFieldsUpdateProperty
        {verificationState = Prelude.pure newValue, ..}
instance Property "Workflow" AutomationRulesFindingFieldsUpdateProperty where
  type PropertyType "Workflow" AutomationRulesFindingFieldsUpdateProperty = WorkflowUpdateProperty
  set newValue AutomationRulesFindingFieldsUpdateProperty {..}
    = AutomationRulesFindingFieldsUpdateProperty
        {workflow = Prelude.pure newValue, ..}