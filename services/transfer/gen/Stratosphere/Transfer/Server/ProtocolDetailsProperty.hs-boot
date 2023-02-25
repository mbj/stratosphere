module Stratosphere.Transfer.Server.ProtocolDetailsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ProtocolDetailsProperty :: Prelude.Type
instance ToResourceProperties ProtocolDetailsProperty
instance JSON.ToJSON ProtocolDetailsProperty