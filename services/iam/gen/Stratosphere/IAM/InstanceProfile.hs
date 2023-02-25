module Stratosphere.IAM.InstanceProfile (
        InstanceProfile(..), mkInstanceProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceProfile
  = InstanceProfile {instanceProfileName :: (Prelude.Maybe (Value Prelude.Text)),
                     path :: (Prelude.Maybe (Value Prelude.Text)),
                     roles :: (ValueList (Value Prelude.Text))}
mkInstanceProfile ::
  ValueList (Value Prelude.Text) -> InstanceProfile
mkInstanceProfile roles
  = InstanceProfile
      {roles = roles, instanceProfileName = Prelude.Nothing,
       path = Prelude.Nothing}
instance ToResourceProperties InstanceProfile where
  toResourceProperties InstanceProfile {..}
    = ResourceProperties
        {awsType = "AWS::IAM::InstanceProfile",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Roles" JSON..= roles]
                           (Prelude.catMaybes
                              [(JSON..=) "InstanceProfileName" Prelude.<$> instanceProfileName,
                               (JSON..=) "Path" Prelude.<$> path]))}
instance JSON.ToJSON InstanceProfile where
  toJSON InstanceProfile {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Roles" JSON..= roles]
              (Prelude.catMaybes
                 [(JSON..=) "InstanceProfileName" Prelude.<$> instanceProfileName,
                  (JSON..=) "Path" Prelude.<$> path])))
instance Property "InstanceProfileName" InstanceProfile where
  type PropertyType "InstanceProfileName" InstanceProfile = Value Prelude.Text
  set newValue InstanceProfile {..}
    = InstanceProfile {instanceProfileName = Prelude.pure newValue, ..}
instance Property "Path" InstanceProfile where
  type PropertyType "Path" InstanceProfile = Value Prelude.Text
  set newValue InstanceProfile {..}
    = InstanceProfile {path = Prelude.pure newValue, ..}
instance Property "Roles" InstanceProfile where
  type PropertyType "Roles" InstanceProfile = ValueList (Value Prelude.Text)
  set newValue InstanceProfile {..}
    = InstanceProfile {roles = newValue, ..}