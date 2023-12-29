module Stratosphere.Pipes.Pipe.EcsTaskOverrideProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EcsTaskOverrideProperty :: Prelude.Type
instance ToResourceProperties EcsTaskOverrideProperty
instance Prelude.Eq EcsTaskOverrideProperty
instance Prelude.Show EcsTaskOverrideProperty
instance JSON.ToJSON EcsTaskOverrideProperty