module Stratosphere.Events.Endpoint.SecondaryProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SecondaryProperty :: Prelude.Type
instance ToResourceProperties SecondaryProperty
instance Prelude.Eq SecondaryProperty
instance Prelude.Show SecondaryProperty
instance JSON.ToJSON SecondaryProperty