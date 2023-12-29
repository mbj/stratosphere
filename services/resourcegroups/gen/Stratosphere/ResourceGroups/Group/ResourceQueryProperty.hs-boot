module Stratosphere.ResourceGroups.Group.ResourceQueryProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ResourceQueryProperty :: Prelude.Type
instance ToResourceProperties ResourceQueryProperty
instance Prelude.Eq ResourceQueryProperty
instance Prelude.Show ResourceQueryProperty
instance JSON.ToJSON ResourceQueryProperty