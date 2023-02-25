module Stratosphere.CustomerProfiles.ObjectType.KeyMapProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data KeyMapProperty :: Prelude.Type
instance ToResourceProperties KeyMapProperty
instance JSON.ToJSON KeyMapProperty