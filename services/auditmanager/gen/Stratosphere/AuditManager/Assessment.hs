module Stratosphere.AuditManager.Assessment (
        module Exports, Assessment(..), mkAssessment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AuditManager.Assessment.AWSAccountProperty as Exports
import {-# SOURCE #-} Stratosphere.AuditManager.Assessment.AssessmentReportsDestinationProperty as Exports
import {-# SOURCE #-} Stratosphere.AuditManager.Assessment.DelegationProperty as Exports
import {-# SOURCE #-} Stratosphere.AuditManager.Assessment.RoleProperty as Exports
import {-# SOURCE #-} Stratosphere.AuditManager.Assessment.ScopeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Assessment
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-auditmanager-assessment.html>
    Assessment {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-auditmanager-assessment.html#cfn-auditmanager-assessment-assessmentreportsdestination>
                assessmentReportsDestination :: (Prelude.Maybe AssessmentReportsDestinationProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-auditmanager-assessment.html#cfn-auditmanager-assessment-awsaccount>
                awsAccount :: (Prelude.Maybe AWSAccountProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-auditmanager-assessment.html#cfn-auditmanager-assessment-delegations>
                delegations :: (Prelude.Maybe [DelegationProperty]),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-auditmanager-assessment.html#cfn-auditmanager-assessment-description>
                description :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-auditmanager-assessment.html#cfn-auditmanager-assessment-frameworkid>
                frameworkId :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-auditmanager-assessment.html#cfn-auditmanager-assessment-name>
                name :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-auditmanager-assessment.html#cfn-auditmanager-assessment-roles>
                roles :: (Prelude.Maybe [RoleProperty]),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-auditmanager-assessment.html#cfn-auditmanager-assessment-scope>
                scope :: (Prelude.Maybe ScopeProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-auditmanager-assessment.html#cfn-auditmanager-assessment-status>
                status :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-auditmanager-assessment.html#cfn-auditmanager-assessment-tags>
                tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssessment :: Assessment
mkAssessment
  = Assessment
      {haddock_workaround_ = (),
       assessmentReportsDestination = Prelude.Nothing,
       awsAccount = Prelude.Nothing, delegations = Prelude.Nothing,
       description = Prelude.Nothing, frameworkId = Prelude.Nothing,
       name = Prelude.Nothing, roles = Prelude.Nothing,
       scope = Prelude.Nothing, status = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Assessment where
  toResourceProperties Assessment {..}
    = ResourceProperties
        {awsType = "AWS::AuditManager::Assessment",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AssessmentReportsDestination"
                              Prelude.<$> assessmentReportsDestination,
                            (JSON..=) "AwsAccount" Prelude.<$> awsAccount,
                            (JSON..=) "Delegations" Prelude.<$> delegations,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "FrameworkId" Prelude.<$> frameworkId,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Roles" Prelude.<$> roles,
                            (JSON..=) "Scope" Prelude.<$> scope,
                            (JSON..=) "Status" Prelude.<$> status,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Assessment where
  toJSON Assessment {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AssessmentReportsDestination"
                 Prelude.<$> assessmentReportsDestination,
               (JSON..=) "AwsAccount" Prelude.<$> awsAccount,
               (JSON..=) "Delegations" Prelude.<$> delegations,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "FrameworkId" Prelude.<$> frameworkId,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Roles" Prelude.<$> roles,
               (JSON..=) "Scope" Prelude.<$> scope,
               (JSON..=) "Status" Prelude.<$> status,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "AssessmentReportsDestination" Assessment where
  type PropertyType "AssessmentReportsDestination" Assessment = AssessmentReportsDestinationProperty
  set newValue Assessment {..}
    = Assessment
        {assessmentReportsDestination = Prelude.pure newValue, ..}
instance Property "AwsAccount" Assessment where
  type PropertyType "AwsAccount" Assessment = AWSAccountProperty
  set newValue Assessment {..}
    = Assessment {awsAccount = Prelude.pure newValue, ..}
instance Property "Delegations" Assessment where
  type PropertyType "Delegations" Assessment = [DelegationProperty]
  set newValue Assessment {..}
    = Assessment {delegations = Prelude.pure newValue, ..}
instance Property "Description" Assessment where
  type PropertyType "Description" Assessment = Value Prelude.Text
  set newValue Assessment {..}
    = Assessment {description = Prelude.pure newValue, ..}
instance Property "FrameworkId" Assessment where
  type PropertyType "FrameworkId" Assessment = Value Prelude.Text
  set newValue Assessment {..}
    = Assessment {frameworkId = Prelude.pure newValue, ..}
instance Property "Name" Assessment where
  type PropertyType "Name" Assessment = Value Prelude.Text
  set newValue Assessment {..}
    = Assessment {name = Prelude.pure newValue, ..}
instance Property "Roles" Assessment where
  type PropertyType "Roles" Assessment = [RoleProperty]
  set newValue Assessment {..}
    = Assessment {roles = Prelude.pure newValue, ..}
instance Property "Scope" Assessment where
  type PropertyType "Scope" Assessment = ScopeProperty
  set newValue Assessment {..}
    = Assessment {scope = Prelude.pure newValue, ..}
instance Property "Status" Assessment where
  type PropertyType "Status" Assessment = Value Prelude.Text
  set newValue Assessment {..}
    = Assessment {status = Prelude.pure newValue, ..}
instance Property "Tags" Assessment where
  type PropertyType "Tags" Assessment = [Tag]
  set newValue Assessment {..}
    = Assessment {tags = Prelude.pure newValue, ..}