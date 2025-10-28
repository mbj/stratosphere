module Stratosphere.AuditManager.Assessment.DelegationProperty (
        DelegationProperty(..), mkDelegationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DelegationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-auditmanager-assessment-delegation.html>
    DelegationProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-auditmanager-assessment-delegation.html#cfn-auditmanager-assessment-delegation-assessmentid>
                        assessmentId :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-auditmanager-assessment-delegation.html#cfn-auditmanager-assessment-delegation-assessmentname>
                        assessmentName :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-auditmanager-assessment-delegation.html#cfn-auditmanager-assessment-delegation-comment>
                        comment :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-auditmanager-assessment-delegation.html#cfn-auditmanager-assessment-delegation-controlsetid>
                        controlSetId :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-auditmanager-assessment-delegation.html#cfn-auditmanager-assessment-delegation-createdby>
                        createdBy :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-auditmanager-assessment-delegation.html#cfn-auditmanager-assessment-delegation-creationtime>
                        creationTime :: (Prelude.Maybe (Value Prelude.Double)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-auditmanager-assessment-delegation.html#cfn-auditmanager-assessment-delegation-id>
                        id :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-auditmanager-assessment-delegation.html#cfn-auditmanager-assessment-delegation-lastupdated>
                        lastUpdated :: (Prelude.Maybe (Value Prelude.Double)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-auditmanager-assessment-delegation.html#cfn-auditmanager-assessment-delegation-rolearn>
                        roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-auditmanager-assessment-delegation.html#cfn-auditmanager-assessment-delegation-roletype>
                        roleType :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-auditmanager-assessment-delegation.html#cfn-auditmanager-assessment-delegation-status>
                        status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDelegationProperty :: DelegationProperty
mkDelegationProperty
  = DelegationProperty
      {haddock_workaround_ = (), assessmentId = Prelude.Nothing,
       assessmentName = Prelude.Nothing, comment = Prelude.Nothing,
       controlSetId = Prelude.Nothing, createdBy = Prelude.Nothing,
       creationTime = Prelude.Nothing, id = Prelude.Nothing,
       lastUpdated = Prelude.Nothing, roleArn = Prelude.Nothing,
       roleType = Prelude.Nothing, status = Prelude.Nothing}
instance ToResourceProperties DelegationProperty where
  toResourceProperties DelegationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AuditManager::Assessment.Delegation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AssessmentId" Prelude.<$> assessmentId,
                            (JSON..=) "AssessmentName" Prelude.<$> assessmentName,
                            (JSON..=) "Comment" Prelude.<$> comment,
                            (JSON..=) "ControlSetId" Prelude.<$> controlSetId,
                            (JSON..=) "CreatedBy" Prelude.<$> createdBy,
                            (JSON..=) "CreationTime" Prelude.<$> creationTime,
                            (JSON..=) "Id" Prelude.<$> id,
                            (JSON..=) "LastUpdated" Prelude.<$> lastUpdated,
                            (JSON..=) "RoleArn" Prelude.<$> roleArn,
                            (JSON..=) "RoleType" Prelude.<$> roleType,
                            (JSON..=) "Status" Prelude.<$> status])}
instance JSON.ToJSON DelegationProperty where
  toJSON DelegationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AssessmentId" Prelude.<$> assessmentId,
               (JSON..=) "AssessmentName" Prelude.<$> assessmentName,
               (JSON..=) "Comment" Prelude.<$> comment,
               (JSON..=) "ControlSetId" Prelude.<$> controlSetId,
               (JSON..=) "CreatedBy" Prelude.<$> createdBy,
               (JSON..=) "CreationTime" Prelude.<$> creationTime,
               (JSON..=) "Id" Prelude.<$> id,
               (JSON..=) "LastUpdated" Prelude.<$> lastUpdated,
               (JSON..=) "RoleArn" Prelude.<$> roleArn,
               (JSON..=) "RoleType" Prelude.<$> roleType,
               (JSON..=) "Status" Prelude.<$> status]))
instance Property "AssessmentId" DelegationProperty where
  type PropertyType "AssessmentId" DelegationProperty = Value Prelude.Text
  set newValue DelegationProperty {..}
    = DelegationProperty {assessmentId = Prelude.pure newValue, ..}
instance Property "AssessmentName" DelegationProperty where
  type PropertyType "AssessmentName" DelegationProperty = Value Prelude.Text
  set newValue DelegationProperty {..}
    = DelegationProperty {assessmentName = Prelude.pure newValue, ..}
instance Property "Comment" DelegationProperty where
  type PropertyType "Comment" DelegationProperty = Value Prelude.Text
  set newValue DelegationProperty {..}
    = DelegationProperty {comment = Prelude.pure newValue, ..}
instance Property "ControlSetId" DelegationProperty where
  type PropertyType "ControlSetId" DelegationProperty = Value Prelude.Text
  set newValue DelegationProperty {..}
    = DelegationProperty {controlSetId = Prelude.pure newValue, ..}
instance Property "CreatedBy" DelegationProperty where
  type PropertyType "CreatedBy" DelegationProperty = Value Prelude.Text
  set newValue DelegationProperty {..}
    = DelegationProperty {createdBy = Prelude.pure newValue, ..}
instance Property "CreationTime" DelegationProperty where
  type PropertyType "CreationTime" DelegationProperty = Value Prelude.Double
  set newValue DelegationProperty {..}
    = DelegationProperty {creationTime = Prelude.pure newValue, ..}
instance Property "Id" DelegationProperty where
  type PropertyType "Id" DelegationProperty = Value Prelude.Text
  set newValue DelegationProperty {..}
    = DelegationProperty {id = Prelude.pure newValue, ..}
instance Property "LastUpdated" DelegationProperty where
  type PropertyType "LastUpdated" DelegationProperty = Value Prelude.Double
  set newValue DelegationProperty {..}
    = DelegationProperty {lastUpdated = Prelude.pure newValue, ..}
instance Property "RoleArn" DelegationProperty where
  type PropertyType "RoleArn" DelegationProperty = Value Prelude.Text
  set newValue DelegationProperty {..}
    = DelegationProperty {roleArn = Prelude.pure newValue, ..}
instance Property "RoleType" DelegationProperty where
  type PropertyType "RoleType" DelegationProperty = Value Prelude.Text
  set newValue DelegationProperty {..}
    = DelegationProperty {roleType = Prelude.pure newValue, ..}
instance Property "Status" DelegationProperty where
  type PropertyType "Status" DelegationProperty = Value Prelude.Text
  set newValue DelegationProperty {..}
    = DelegationProperty {status = Prelude.pure newValue, ..}