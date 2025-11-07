module Stratosphere.DataZone.PolicyGrant.UserPolicyGrantPrincipalProperty (
        UserPolicyGrantPrincipalProperty(..),
        mkUserPolicyGrantPrincipalProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserPolicyGrantPrincipalProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-userpolicygrantprincipal.html>
    UserPolicyGrantPrincipalProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-userpolicygrantprincipal.html#cfn-datazone-policygrant-userpolicygrantprincipal-allusersgrantfilter>
                                      allUsersGrantFilter :: (Prelude.Maybe JSON.Object),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-userpolicygrantprincipal.html#cfn-datazone-policygrant-userpolicygrantprincipal-useridentifier>
                                      userIdentifier :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserPolicyGrantPrincipalProperty ::
  UserPolicyGrantPrincipalProperty
mkUserPolicyGrantPrincipalProperty
  = UserPolicyGrantPrincipalProperty
      {haddock_workaround_ = (), allUsersGrantFilter = Prelude.Nothing,
       userIdentifier = Prelude.Nothing}
instance ToResourceProperties UserPolicyGrantPrincipalProperty where
  toResourceProperties UserPolicyGrantPrincipalProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::PolicyGrant.UserPolicyGrantPrincipal",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllUsersGrantFilter" Prelude.<$> allUsersGrantFilter,
                            (JSON..=) "UserIdentifier" Prelude.<$> userIdentifier])}
instance JSON.ToJSON UserPolicyGrantPrincipalProperty where
  toJSON UserPolicyGrantPrincipalProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllUsersGrantFilter" Prelude.<$> allUsersGrantFilter,
               (JSON..=) "UserIdentifier" Prelude.<$> userIdentifier]))
instance Property "AllUsersGrantFilter" UserPolicyGrantPrincipalProperty where
  type PropertyType "AllUsersGrantFilter" UserPolicyGrantPrincipalProperty = JSON.Object
  set newValue UserPolicyGrantPrincipalProperty {..}
    = UserPolicyGrantPrincipalProperty
        {allUsersGrantFilter = Prelude.pure newValue, ..}
instance Property "UserIdentifier" UserPolicyGrantPrincipalProperty where
  type PropertyType "UserIdentifier" UserPolicyGrantPrincipalProperty = Value Prelude.Text
  set newValue UserPolicyGrantPrincipalProperty {..}
    = UserPolicyGrantPrincipalProperty
        {userIdentifier = Prelude.pure newValue, ..}