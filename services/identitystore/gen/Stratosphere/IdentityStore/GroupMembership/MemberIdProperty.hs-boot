module Stratosphere.IdentityStore.GroupMembership.MemberIdProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MemberIdProperty :: Prelude.Type
instance ToResourceProperties MemberIdProperty
instance Prelude.Eq MemberIdProperty
instance Prelude.Show MemberIdProperty
instance JSON.ToJSON MemberIdProperty