module Stratosphere.Greengrass.ResourceDefinition.ResourceInstanceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ResourceInstanceProperty :: Prelude.Type
instance ToResourceProperties ResourceInstanceProperty
instance Prelude.Eq ResourceInstanceProperty
instance Prelude.Show ResourceInstanceProperty
instance JSON.ToJSON ResourceInstanceProperty