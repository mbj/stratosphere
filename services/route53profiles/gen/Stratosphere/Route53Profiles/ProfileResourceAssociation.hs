module Stratosphere.Route53Profiles.ProfileResourceAssociation (
        ProfileResourceAssociation(..), mkProfileResourceAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProfileResourceAssociation
  = ProfileResourceAssociation {name :: (Value Prelude.Text),
                                profileId :: (Value Prelude.Text),
                                resourceArn :: (Value Prelude.Text),
                                resourceProperties :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProfileResourceAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> ProfileResourceAssociation
mkProfileResourceAssociation name profileId resourceArn
  = ProfileResourceAssociation
      {name = name, profileId = profileId, resourceArn = resourceArn,
       resourceProperties = Prelude.Nothing}
instance ToResourceProperties ProfileResourceAssociation where
  toResourceProperties ProfileResourceAssociation {..}
    = ResourceProperties
        {awsType = "AWS::Route53Profiles::ProfileResourceAssociation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "ProfileId" JSON..= profileId,
                            "ResourceArn" JSON..= resourceArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ResourceProperties" Prelude.<$> resourceProperties]))}
instance JSON.ToJSON ProfileResourceAssociation where
  toJSON ProfileResourceAssociation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "ProfileId" JSON..= profileId,
               "ResourceArn" JSON..= resourceArn]
              (Prelude.catMaybes
                 [(JSON..=) "ResourceProperties" Prelude.<$> resourceProperties])))
instance Property "Name" ProfileResourceAssociation where
  type PropertyType "Name" ProfileResourceAssociation = Value Prelude.Text
  set newValue ProfileResourceAssociation {..}
    = ProfileResourceAssociation {name = newValue, ..}
instance Property "ProfileId" ProfileResourceAssociation where
  type PropertyType "ProfileId" ProfileResourceAssociation = Value Prelude.Text
  set newValue ProfileResourceAssociation {..}
    = ProfileResourceAssociation {profileId = newValue, ..}
instance Property "ResourceArn" ProfileResourceAssociation where
  type PropertyType "ResourceArn" ProfileResourceAssociation = Value Prelude.Text
  set newValue ProfileResourceAssociation {..}
    = ProfileResourceAssociation {resourceArn = newValue, ..}
instance Property "ResourceProperties" ProfileResourceAssociation where
  type PropertyType "ResourceProperties" ProfileResourceAssociation = Value Prelude.Text
  set newValue ProfileResourceAssociation {..}
    = ProfileResourceAssociation
        {resourceProperties = Prelude.pure newValue, ..}