module Stratosphere.MediaConnect.Flow.NdiConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data NdiConfigProperty :: Prelude.Type
instance ToResourceProperties NdiConfigProperty
instance Prelude.Eq NdiConfigProperty
instance Prelude.Show NdiConfigProperty
instance JSON.ToJSON NdiConfigProperty