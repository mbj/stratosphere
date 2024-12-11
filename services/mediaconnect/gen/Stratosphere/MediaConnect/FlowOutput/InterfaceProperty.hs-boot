module Stratosphere.MediaConnect.FlowOutput.InterfaceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data InterfaceProperty :: Prelude.Type
instance ToResourceProperties InterfaceProperty
instance Prelude.Eq InterfaceProperty
instance Prelude.Show InterfaceProperty
instance JSON.ToJSON InterfaceProperty