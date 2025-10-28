module Stratosphere.Transfer.Profile (
        Profile(..), mkProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Profile
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-profile.html>
    Profile {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-profile.html#cfn-transfer-profile-as2id>
             as2Id :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-profile.html#cfn-transfer-profile-certificateids>
             certificateIds :: (Prelude.Maybe (ValueList Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-profile.html#cfn-transfer-profile-profiletype>
             profileType :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-profile.html#cfn-transfer-profile-tags>
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProfile :: Value Prelude.Text -> Value Prelude.Text -> Profile
mkProfile as2Id profileType
  = Profile
      {haddock_workaround_ = (), as2Id = as2Id,
       profileType = profileType, certificateIds = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Profile where
  toResourceProperties Profile {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Profile", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["As2Id" JSON..= as2Id, "ProfileType" JSON..= profileType]
                           (Prelude.catMaybes
                              [(JSON..=) "CertificateIds" Prelude.<$> certificateIds,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Profile where
  toJSON Profile {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["As2Id" JSON..= as2Id, "ProfileType" JSON..= profileType]
              (Prelude.catMaybes
                 [(JSON..=) "CertificateIds" Prelude.<$> certificateIds,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "As2Id" Profile where
  type PropertyType "As2Id" Profile = Value Prelude.Text
  set newValue Profile {..} = Profile {as2Id = newValue, ..}
instance Property "CertificateIds" Profile where
  type PropertyType "CertificateIds" Profile = ValueList Prelude.Text
  set newValue Profile {..}
    = Profile {certificateIds = Prelude.pure newValue, ..}
instance Property "ProfileType" Profile where
  type PropertyType "ProfileType" Profile = Value Prelude.Text
  set newValue Profile {..} = Profile {profileType = newValue, ..}
instance Property "Tags" Profile where
  type PropertyType "Tags" Profile = [Tag]
  set newValue Profile {..}
    = Profile {tags = Prelude.pure newValue, ..}