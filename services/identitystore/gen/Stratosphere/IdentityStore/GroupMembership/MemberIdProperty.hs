module Stratosphere.IdentityStore.GroupMembership.MemberIdProperty (
        MemberIdProperty(..), mkMemberIdProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MemberIdProperty
  = MemberIdProperty {userId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMemberIdProperty :: Value Prelude.Text -> MemberIdProperty
mkMemberIdProperty userId = MemberIdProperty {userId = userId}
instance ToResourceProperties MemberIdProperty where
  toResourceProperties MemberIdProperty {..}
    = ResourceProperties
        {awsType = "AWS::IdentityStore::GroupMembership.MemberId",
         supportsTags = Prelude.False,
         properties = ["UserId" JSON..= userId]}
instance JSON.ToJSON MemberIdProperty where
  toJSON MemberIdProperty {..}
    = JSON.object ["UserId" JSON..= userId]
instance Property "UserId" MemberIdProperty where
  type PropertyType "UserId" MemberIdProperty = Value Prelude.Text
  set newValue MemberIdProperty {}
    = MemberIdProperty {userId = newValue, ..}