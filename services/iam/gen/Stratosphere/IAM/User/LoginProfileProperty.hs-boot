module Stratosphere.IAM.User.LoginProfileProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LoginProfileProperty :: Prelude.Type
instance ToResourceProperties LoginProfileProperty
instance JSON.ToJSON LoginProfileProperty