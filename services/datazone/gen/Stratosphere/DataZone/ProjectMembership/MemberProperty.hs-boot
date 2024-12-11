module Stratosphere.DataZone.ProjectMembership.MemberProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MemberProperty :: Prelude.Type
instance ToResourceProperties MemberProperty
instance Prelude.Eq MemberProperty
instance Prelude.Show MemberProperty
instance JSON.ToJSON MemberProperty