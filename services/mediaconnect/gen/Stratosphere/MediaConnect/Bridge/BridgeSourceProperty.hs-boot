module Stratosphere.MediaConnect.Bridge.BridgeSourceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BridgeSourceProperty :: Prelude.Type
instance ToResourceProperties BridgeSourceProperty
instance Prelude.Eq BridgeSourceProperty
instance Prelude.Show BridgeSourceProperty
instance JSON.ToJSON BridgeSourceProperty