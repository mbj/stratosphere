module Stratosphere.MediaPackage.OriginEndpoint.MssEncryptionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MssEncryptionProperty :: Prelude.Type
instance ToResourceProperties MssEncryptionProperty
instance JSON.ToJSON MssEncryptionProperty