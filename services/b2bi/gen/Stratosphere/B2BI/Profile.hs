module Stratosphere.B2BI.Profile (
        Profile(..), mkProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Profile
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-b2bi-profile.html>
    Profile {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-b2bi-profile.html#cfn-b2bi-profile-businessname>
             businessName :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-b2bi-profile.html#cfn-b2bi-profile-email>
             email :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-b2bi-profile.html#cfn-b2bi-profile-logging>
             logging :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-b2bi-profile.html#cfn-b2bi-profile-name>
             name :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-b2bi-profile.html#cfn-b2bi-profile-phone>
             phone :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-b2bi-profile.html#cfn-b2bi-profile-tags>
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProfile ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> Profile
mkProfile businessName logging name phone
  = Profile
      {haddock_workaround_ = (), businessName = businessName,
       logging = logging, name = name, phone = phone,
       email = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Profile where
  toResourceProperties Profile {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Profile", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BusinessName" JSON..= businessName, "Logging" JSON..= logging,
                            "Name" JSON..= name, "Phone" JSON..= phone]
                           (Prelude.catMaybes
                              [(JSON..=) "Email" Prelude.<$> email,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Profile where
  toJSON Profile {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BusinessName" JSON..= businessName, "Logging" JSON..= logging,
               "Name" JSON..= name, "Phone" JSON..= phone]
              (Prelude.catMaybes
                 [(JSON..=) "Email" Prelude.<$> email,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "BusinessName" Profile where
  type PropertyType "BusinessName" Profile = Value Prelude.Text
  set newValue Profile {..} = Profile {businessName = newValue, ..}
instance Property "Email" Profile where
  type PropertyType "Email" Profile = Value Prelude.Text
  set newValue Profile {..}
    = Profile {email = Prelude.pure newValue, ..}
instance Property "Logging" Profile where
  type PropertyType "Logging" Profile = Value Prelude.Text
  set newValue Profile {..} = Profile {logging = newValue, ..}
instance Property "Name" Profile where
  type PropertyType "Name" Profile = Value Prelude.Text
  set newValue Profile {..} = Profile {name = newValue, ..}
instance Property "Phone" Profile where
  type PropertyType "Phone" Profile = Value Prelude.Text
  set newValue Profile {..} = Profile {phone = newValue, ..}
instance Property "Tags" Profile where
  type PropertyType "Tags" Profile = [Tag]
  set newValue Profile {..}
    = Profile {tags = Prelude.pure newValue, ..}