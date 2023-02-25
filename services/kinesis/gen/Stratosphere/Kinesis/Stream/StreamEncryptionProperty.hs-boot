module Stratosphere.Kinesis.Stream.StreamEncryptionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StreamEncryptionProperty :: Prelude.Type
instance ToResourceProperties StreamEncryptionProperty
instance JSON.ToJSON StreamEncryptionProperty