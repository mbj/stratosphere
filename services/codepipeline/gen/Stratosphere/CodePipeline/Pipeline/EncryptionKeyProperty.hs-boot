module Stratosphere.CodePipeline.Pipeline.EncryptionKeyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EncryptionKeyProperty :: Prelude.Type
instance ToResourceProperties EncryptionKeyProperty
instance Prelude.Eq EncryptionKeyProperty
instance Prelude.Show EncryptionKeyProperty
instance JSON.ToJSON EncryptionKeyProperty