module Stratosphere.Connect.User.UserIdentityInfoProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data UserIdentityInfoProperty :: Prelude.Type
instance ToResourceProperties UserIdentityInfoProperty
instance JSON.ToJSON UserIdentityInfoProperty