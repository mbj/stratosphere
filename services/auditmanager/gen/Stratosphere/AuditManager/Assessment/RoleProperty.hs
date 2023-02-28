module Stratosphere.AuditManager.Assessment.RoleProperty (
        RoleProperty(..), mkRoleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RoleProperty
  = RoleProperty {roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                  roleType :: (Prelude.Maybe (Value Prelude.Text))}
mkRoleProperty :: RoleProperty
mkRoleProperty
  = RoleProperty
      {roleArn = Prelude.Nothing, roleType = Prelude.Nothing}
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