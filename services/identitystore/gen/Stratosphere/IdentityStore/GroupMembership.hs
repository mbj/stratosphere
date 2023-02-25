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
  = GroupMembership {groupId :: (Value Prelude.Text),
                     identityStoreId :: (Value Prelude.Text),
                     memberId :: MemberIdProperty}
mkGroupMembership ::
  Value Prelude.Text
  -> Value Prelude.Text -> MemberIdProperty -> GroupMembership
mkGroupMembership groupId identityStoreId memberId
  = GroupMembership
      {groupId = groupId, identityStoreId = identityStoreId,
       memberId = memberId}
instance ToResourceProperties GroupMembership where
  toResourceProperties GroupMembership {..}
    = ResourceProperties
        {awsType = "AWS::IdentityStore::GroupMembership",
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