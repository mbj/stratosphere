module Stratosphere.MediaConnect.FlowEntitlement.EncryptionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EncryptionProperty :: Prelude.Type
instance ToResourceProperties EncryptionProperty
instance JSON.ToJSON EncryptionProperty