module Stratosphere.CodePipeline.Pipeline.EncryptionKeyProperty (
        EncryptionKeyProperty(..), mkEncryptionKeyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionKeyProperty
  = EncryptionKeyProperty {id :: (Value Prelude.Text),
                           type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionKeyProperty ::
  Value Prelude.Text -> Value Prelude.Text -> EncryptionKeyProperty
mkEncryptionKeyProperty id type'
  = EncryptionKeyProperty {id = id, type' = type'}
instance ToResourceProperties EncryptionKeyProperty where
  toResourceProperties EncryptionKeyProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Pipeline.EncryptionKey",
         supportsTags = Prelude.False,
         properties = ["Id" JSON..= id, "Type" JSON..= type']}
instance JSON.ToJSON EncryptionKeyProperty where
  toJSON EncryptionKeyProperty {..}
    = JSON.object ["Id" JSON..= id, "Type" JSON..= type']
instance Property "Id" EncryptionKeyProperty where
  type PropertyType "Id" EncryptionKeyProperty = Value Prelude.Text
  set newValue EncryptionKeyProperty {..}
    = EncryptionKeyProperty {id = newValue, ..}
instance Property "Type" EncryptionKeyProperty where
  type PropertyType "Type" EncryptionKeyProperty = Value Prelude.Text
  set newValue EncryptionKeyProperty {..}
    = EncryptionKeyProperty {type' = newValue, ..}