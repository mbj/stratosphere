module Stratosphere.IdentityStore.GroupMembership (
        module Exports, GroupMembership(..), mkGroupMembership
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IdentityStore.GroupMembership.MemberIdProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GroupMembership
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-identitystore-groupmembership.html>
    GroupMembership {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-identitystore-groupmembership.html#cfn-identitystore-groupmembership-groupid>
                     groupId :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-identitystore-groupmembership.html#cfn-identitystore-groupmembership-identitystoreid>
                     identityStoreId :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-identitystore-groupmembership.html#cfn-identitystore-groupmembership-memberid>
                     memberId :: MemberIdProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGroupMembership ::
  Value Prelude.Text
  -> Value Prelude.Text -> MemberIdProperty -> GroupMembership
mkGroupMembership groupId identityStoreId memberId
  = GroupMembership
      {haddock_workaround_ = (), groupId = groupId,
       identityStoreId = identityStoreId, memberId = memberId}
instance ToResourceProperties GroupMembership where
  toResourceProperties GroupMembership {..}
    = ResourceProperties
        {awsType = "AWS::IdentityStore::GroupMembership",
         supportsTags = Prelude.False,
         properties = ["GroupId" JSON..= groupId,
                       "IdentityStoreId" JSON..= identityStoreId,
                       "MemberId" JSON..= memberId]}
instance JSON.ToJSON GroupMembership where
  toJSON GroupMembership {..}
    = JSON.object
        ["GroupId" JSON..= groupId,
         "IdentityStoreId" JSON..= identityStoreId,
         "MemberId" JSON..= memberId]
instance Property "GroupId" GroupMembership where
  type PropertyType "GroupId" GroupMembership = Value Prelude.Text
  set newValue GroupMembership {..}
    = GroupMembership {groupId = newValue, ..}
instance Property "IdentityStoreId" GroupMembership where
  type PropertyType "IdentityStoreId" GroupMembership = Value Prelude.Text
  set newValue GroupMembership {..}
    = GroupMembership {identityStoreId = newValue, ..}
instance Property "MemberId" GroupMembership where
  type PropertyType "MemberId" GroupMembership = MemberIdProperty
  set newValue GroupMembership {..}
    = GroupMembership {memberId = newValue, ..}