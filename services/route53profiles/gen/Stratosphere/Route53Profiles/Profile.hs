module Stratosphere.Route53Profiles.Profile (
        Profile(..), mkProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Profile
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53profiles-profile.html>
    Profile {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53profiles-profile.html#cfn-route53profiles-profile-name>
             name :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53profiles-profile.html#cfn-route53profiles-profile-tags>
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProfile :: Value Prelude.Text -> Profile
mkProfile name
  = Profile
      {haddock_workaround_ = (), name = name, tags = Prelude.Nothing}
instance ToResourceProperties Profile where
  toResourceProperties Profile {..}
    = ResourceProperties
        {awsType = "AWS::Route53Profiles::Profile",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Profile where
  toJSON Profile {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Name" Profile where
  type PropertyType "Name" Profile = Value Prelude.Text
  set newValue Profile {..} = Profile {name = newValue, ..}
instance Property "Tags" Profile where
  type PropertyType "Tags" Profile = [Tag]
  set newValue Profile {..}
    = Profile {tags = Prelude.pure newValue, ..}