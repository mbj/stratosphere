module Stratosphere.Connect.User.UserPhoneConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data UserPhoneConfigProperty :: Prelude.Type
instance ToResourceProperties UserPhoneConfigProperty
instance JSON.ToJSON UserPhoneConfigProperty