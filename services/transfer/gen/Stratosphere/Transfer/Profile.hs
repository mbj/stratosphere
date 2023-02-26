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
  = Profile {as2Id :: (Value Prelude.Text),
             certificateIds :: (Prelude.Maybe (ValueList Prelude.Text)),
             profileType :: (Value Prelude.Text),
             tags :: (Prelude.Maybe [Tag])}
mkProfile :: Value Prelude.Text -> Value Prelude.Text -> Profile
mkProfile as2Id profileType
  = Profile
      {as2Id = as2Id, profileType = profileType,
       certificateIds = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Profile where
  toResourceProperties Profile {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Profile",
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