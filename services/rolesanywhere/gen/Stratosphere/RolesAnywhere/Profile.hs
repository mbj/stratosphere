module Stratosphere.RolesAnywhere.Profile (
        module Exports, Profile(..), mkProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RolesAnywhere.Profile.AttributeMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Profile
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rolesanywhere-profile.html>
    Profile {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rolesanywhere-profile.html#cfn-rolesanywhere-profile-acceptrolesessionname>
             acceptRoleSessionName :: (Prelude.Maybe (Value Prelude.Bool)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rolesanywhere-profile.html#cfn-rolesanywhere-profile-attributemappings>
             attributeMappings :: (Prelude.Maybe [AttributeMappingProperty]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rolesanywhere-profile.html#cfn-rolesanywhere-profile-durationseconds>
             durationSeconds :: (Prelude.Maybe (Value Prelude.Double)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rolesanywhere-profile.html#cfn-rolesanywhere-profile-enabled>
             enabled :: (Prelude.Maybe (Value Prelude.Bool)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rolesanywhere-profile.html#cfn-rolesanywhere-profile-managedpolicyarns>
             managedPolicyArns :: (Prelude.Maybe (ValueList Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rolesanywhere-profile.html#cfn-rolesanywhere-profile-name>
             name :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rolesanywhere-profile.html#cfn-rolesanywhere-profile-requireinstanceproperties>
             requireInstanceProperties :: (Prelude.Maybe (Value Prelude.Bool)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rolesanywhere-profile.html#cfn-rolesanywhere-profile-rolearns>
             roleArns :: (ValueList Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rolesanywhere-profile.html#cfn-rolesanywhere-profile-sessionpolicy>
             sessionPolicy :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rolesanywhere-profile.html#cfn-rolesanywhere-profile-tags>
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProfile ::
  Value Prelude.Text -> ValueList Prelude.Text -> Profile
mkProfile name roleArns
  = Profile
      {haddock_workaround_ = (), name = name, roleArns = roleArns,
       acceptRoleSessionName = Prelude.Nothing,
       attributeMappings = Prelude.Nothing,
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
                              [(JSON..=) "AcceptRoleSessionName"
                                 Prelude.<$> acceptRoleSessionName,
                               (JSON..=) "AttributeMappings" Prelude.<$> attributeMappings,
                               (JSON..=) "DurationSeconds" Prelude.<$> durationSeconds,
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
                 [(JSON..=) "AcceptRoleSessionName"
                    Prelude.<$> acceptRoleSessionName,
                  (JSON..=) "AttributeMappings" Prelude.<$> attributeMappings,
                  (JSON..=) "DurationSeconds" Prelude.<$> durationSeconds,
                  (JSON..=) "Enabled" Prelude.<$> enabled,
                  (JSON..=) "ManagedPolicyArns" Prelude.<$> managedPolicyArns,
                  (JSON..=) "RequireInstanceProperties"
                    Prelude.<$> requireInstanceProperties,
                  (JSON..=) "SessionPolicy" Prelude.<$> sessionPolicy,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AcceptRoleSessionName" Profile where
  type PropertyType "AcceptRoleSessionName" Profile = Value Prelude.Bool
  set newValue Profile {..}
    = Profile {acceptRoleSessionName = Prelude.pure newValue, ..}
instance Property "AttributeMappings" Profile where
  type PropertyType "AttributeMappings" Profile = [AttributeMappingProperty]
  set newValue Profile {..}
    = Profile {attributeMappings = Prelude.pure newValue, ..}
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