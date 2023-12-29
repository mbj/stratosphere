module Stratosphere.Lambda.EventSourceMapping.OnFailureProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OnFailureProperty :: Prelude.Type
instance ToResourceProperties OnFailureProperty
instance Prelude.Eq OnFailureProperty
instance Prelude.Show OnFailureProperty
instance JSON.ToJSON OnFailureProperty