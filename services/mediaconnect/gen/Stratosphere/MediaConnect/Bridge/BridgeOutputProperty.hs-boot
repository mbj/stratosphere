module Stratosphere.MediaConnect.Bridge.BridgeOutputProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BridgeOutputProperty :: Prelude.Type
instance ToResourceProperties BridgeOutputProperty
instance Prelude.Eq BridgeOutputProperty
instance Prelude.Show BridgeOutputProperty
instance JSON.ToJSON BridgeOutputProperty