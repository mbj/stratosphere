module Stratosphere.RolesAnywhere.Profile (
        Profile(..), mkProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Profile
  = Profile {durationSeconds :: (Prelude.Maybe (Value Prelude.Double)),
             enabled :: (Prelude.Maybe (Value Prelude.Bool)),
             managedPolicyArns :: (Prelude.Maybe (ValueList Prelude.Text)),
             name :: (Value Prelude.Text),
             requireInstanceProperties :: (Prelude.Maybe (Value Prelude.Bool)),
             roleArns :: (ValueList Prelude.Text),
             sessionPolicy :: (Prelude.Maybe (Value Prelude.Text)),
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProfile ::
  Value Prelude.Text -> ValueList Prelude.Text -> Profile
mkProfile name roleArns
  = Profile
      {name = name, roleArns = roleArns,
       durationSeconds = Prelude.Nothing, enabled = Prelude.Nothing,
       managedPolicyArns = Prelude.Nothing,
       requireInstanceProperties = Prelude.Nothing,
       sessionPolicy = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Profile where
  toResourceProperties Profile {..}
    = ResourceProperties
        {awsType = "AWS::RolesAnywhere::Profile",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "RoleArns" JSON..= roleArns]
                           (Prelude.catMaybes
                              [(JSON..=) "DurationSeconds" Prelude.<$> durationSeconds,
                               (JSON..=) "Enabled" Prelude.<$> enabled,
                               (JSON..=) "ManagedPolicyArns" Prelude.<$> managedPolicyArns,
                               (JSON..=) "RequireInstanceProperties"
                                 Prelude.<$> requireInstanceProperties,
                               (JSON..=) "SessionPolicy" Prelude.<$> sessionPolicy,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Profile where
  toJSON Profile {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "RoleArns" JSON..= roleArns]
              (Prelude.catMaybes
                 [(JSON..=) "DurationSeconds" Prelude.<$> durationSeconds,
                  (JSON..=) "Enabled" Prelude.<$> enabled,
                  (JSON..=) "ManagedPolicyArns" Prelude.<$> managedPolicyArns,
                  (JSON..=) "RequireInstanceProperties"
                    Prelude.<$> requireInstanceProperties,
                  (JSON..=) "SessionPolicy" Prelude.<$> sessionPolicy,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DurationSeconds" Profile where
  type PropertyType "DurationSeconds" Profile = Value Prelude.Double
  set newValue Profile {..}
    = Profile {durationSeconds = Prelude.pure newValue, ..}
instance Property "Enabled" Profile where
  type PropertyType "Enabled" Profile = Value Prelude.Bool
  set newValue Profile {..}
    = Profile {enabled = Prelude.pure newValue, ..}
instance Property "ManagedPolicyArns" Profile where
  type PropertyType "ManagedPolicyArns" Profile = ValueList Prelude.Text
  set newValue Profile {..}
    = Profile {managedPolicyArns = Prelude.pure newValue, ..}
instance Property "Name" Profile where
  type PropertyType "Name" Profile = Value Prelude.Text
  set newValue Profile {..} = Profile {name = newValue, ..}
instance Property "RequireInstanceProperties" Profile where
  type PropertyType "RequireInstanceProperties" Profile = Value Prelude.Bool
  set newValue Profile {..}
    = Profile {requireInstanceProperties = Prelude.pure newValue, ..}
instance Property "RoleArns" Profile where
  type PropertyType "RoleArns" Profile = ValueList Prelude.Text
  set newValue Profile {..} = Profile {roleArns = newValue, ..}
instance Property "SessionPolicy" Profile where
  type PropertyType "SessionPolicy" Profile = Value Prelude.Text
  set newValue Profile {..}
    = Profile {sessionPolicy = Prelude.pure newValue, ..}
instance Property "Tags" Profile where
  type PropertyType "Tags" Profile = [Tag]
  set newValue Profile {..}
    = Profile {tags = Prelude.pure newValue, ..}