module Stratosphere.Greengrass.Group.GroupVersionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GroupVersionProperty :: Prelude.Type
instance ToResourceProperties GroupVersionProperty
instance Prelude.Eq GroupVersionProperty
instance Prelude.Show GroupVersionProperty
instance JSON.ToJSON GroupVersionProperty