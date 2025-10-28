module Stratosphere.AuditManager.Assessment.RoleProperty (
        RoleProperty(..), mkRoleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RoleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-auditmanager-assessment-role.html>
    RoleProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-auditmanager-assessment-role.html#cfn-auditmanager-assessment-role-rolearn>
                  roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-auditmanager-assessment-role.html#cfn-auditmanager-assessment-role-roletype>
                  roleType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRoleProperty :: RoleProperty
mkRoleProperty
  = RoleProperty
      {haddock_workaround_ = (), roleArn = Prelude.Nothing,
       roleType = Prelude.Nothing}
instance ToResourceProperties RoleProperty where
  toResourceProperties RoleProperty {..}
    = ResourceProperties
        {awsType = "AWS::AuditManager::Assessment.Role",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RoleArn" Prelude.<$> roleArn,
                            (JSON..=) "RoleType" Prelude.<$> roleType])}
instance JSON.ToJSON RoleProperty where
  toJSON RoleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RoleArn" Prelude.<$> roleArn,
               (JSON..=) "RoleType" Prelude.<$> roleType]))
instance Property "RoleArn" RoleProperty where
  type PropertyType "RoleArn" RoleProperty = Value Prelude.Text
  set newValue RoleProperty {..}
    = RoleProperty {roleArn = Prelude.pure newValue, ..}
instance Property "RoleType" RoleProperty where
  type PropertyType "RoleType" RoleProperty = Value Prelude.Text
  set newValue RoleProperty {..}
    = RoleProperty {roleType = Prelude.pure newValue, ..}