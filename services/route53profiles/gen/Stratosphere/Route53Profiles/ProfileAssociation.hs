module Stratosphere.Route53Profiles.ProfileAssociation (
        ProfileAssociation(..), mkProfileAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ProfileAssociation
  = ProfileAssociation {arn :: (Prelude.Maybe (Value Prelude.Text)),
                        name :: (Value Prelude.Text),
                        profileId :: (Value Prelude.Text),
                        resourceId :: (Value Prelude.Text),
                        tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProfileAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> ProfileAssociation
mkProfileAssociation name profileId resourceId
  = ProfileAssociation
      {name = name, profileId = profileId, resourceId = resourceId,
       arn = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ProfileAssociation where
  toResourceProperties ProfileAssociation {..}
    = ResourceProperties
        {awsType = "AWS::Route53Profiles::ProfileAssociation",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "ProfileId" JSON..= profileId,
                            "ResourceId" JSON..= resourceId]
                           (Prelude.catMaybes
                              [(JSON..=) "Arn" Prelude.<$> arn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ProfileAssociation where
  toJSON ProfileAssociation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "ProfileId" JSON..= profileId,
               "ResourceId" JSON..= resourceId]
              (Prelude.catMaybes
                 [(JSON..=) "Arn" Prelude.<$> arn,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Arn" ProfileAssociation where
  type PropertyType "Arn" ProfileAssociation = Value Prelude.Text
  set newValue ProfileAssociation {..}
    = ProfileAssociation {arn = Prelude.pure newValue, ..}
instance Property "Name" ProfileAssociation where
  type PropertyType "Name" ProfileAssociation = Value Prelude.Text
  set newValue ProfileAssociation {..}
    = ProfileAssociation {name = newValue, ..}
instance Property "ProfileId" ProfileAssociation where
  type PropertyType "ProfileId" ProfileAssociation = Value Prelude.Text
  set newValue ProfileAssociation {..}
    = ProfileAssociation {profileId = newValue, ..}
instance Property "ResourceId" ProfileAssociation where
  type PropertyType "ResourceId" ProfileAssociation = Value Prelude.Text
  set newValue ProfileAssociation {..}
    = ProfileAssociation {resourceId = newValue, ..}
instance Property "Tags" ProfileAssociation where
  type PropertyType "Tags" ProfileAssociation = [Tag]
  set newValue ProfileAssociation {..}
    = ProfileAssociation {tags = Prelude.pure newValue, ..}