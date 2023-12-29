module Stratosphere.Events.Endpoint.FailoverConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FailoverConfigProperty :: Prelude.Type
instance ToResourceProperties FailoverConfigProperty
instance Prelude.Eq FailoverConfigProperty
instance Prelude.Show FailoverConfigProperty
instance JSON.ToJSON FailoverConfigProperty