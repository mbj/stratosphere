module Stratosphere.DataZone.UserProfile (
        UserProfile(..), mkUserProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserProfile
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-userprofile.html>
    UserProfile {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-userprofile.html#cfn-datazone-userprofile-domainidentifier>
                 domainIdentifier :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-userprofile.html#cfn-datazone-userprofile-status>
                 status :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-userprofile.html#cfn-datazone-userprofile-useridentifier>
                 userIdentifier :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-userprofile.html#cfn-datazone-userprofile-usertype>
                 userType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserProfile ::
  Value Prelude.Text -> Value Prelude.Text -> UserProfile
mkUserProfile domainIdentifier userIdentifier
  = UserProfile
      {haddock_workaround_ = (), domainIdentifier = domainIdentifier,
       userIdentifier = userIdentifier, status = Prelude.Nothing,
       userType = Prelude.Nothing}
instance ToResourceProperties UserProfile where
  toResourceProperties UserProfile {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::UserProfile",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainIdentifier" JSON..= domainIdentifier,
                            "UserIdentifier" JSON..= userIdentifier]
                           (Prelude.catMaybes
                              [(JSON..=) "Status" Prelude.<$> status,
                               (JSON..=) "UserType" Prelude.<$> userType]))}
instance JSON.ToJSON UserProfile where
  toJSON UserProfile {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainIdentifier" JSON..= domainIdentifier,
               "UserIdentifier" JSON..= userIdentifier]
              (Prelude.catMaybes
                 [(JSON..=) "Status" Prelude.<$> status,
                  (JSON..=) "UserType" Prelude.<$> userType])))
instance Property "DomainIdentifier" UserProfile where
  type PropertyType "DomainIdentifier" UserProfile = Value Prelude.Text
  set newValue UserProfile {..}
    = UserProfile {domainIdentifier = newValue, ..}
instance Property "Status" UserProfile where
  type PropertyType "Status" UserProfile = Value Prelude.Text
  set newValue UserProfile {..}
    = UserProfile {status = Prelude.pure newValue, ..}
instance Property "UserIdentifier" UserProfile where
  type PropertyType "UserIdentifier" UserProfile = Value Prelude.Text
  set newValue UserProfile {..}
    = UserProfile {userIdentifier = newValue, ..}
instance Property "UserType" UserProfile where
  type PropertyType "UserType" UserProfile = Value Prelude.Text
  set newValue UserProfile {..}
    = UserProfile {userType = Prelude.pure newValue, ..}