module Stratosphere.S3ObjectLambda.AccessPoint.AliasProperty (
        AliasProperty(..), mkAliasProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AliasProperty
  = AliasProperty {status :: (Value Prelude.Text),
                   value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAliasProperty ::
  Value Prelude.Text -> Value Prelude.Text -> AliasProperty
mkAliasProperty status value
  = AliasProperty {status = status, value = value}
instance ToResourceProperties AliasProperty where
  toResourceProperties AliasProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3ObjectLambda::AccessPoint.Alias",
         supportsTags = Prelude.False,
         properties = ["Status" JSON..= status, "Value" JSON..= value]}
instance JSON.ToJSON AliasProperty where
  toJSON AliasProperty {..}
    = JSON.object ["Status" JSON..= status, "Value" JSON..= value]
instance Property "Status" AliasProperty where
  type PropertyType "Status" AliasProperty = Value Prelude.Text
  set newValue AliasProperty {..}
    = AliasProperty {status = newValue, ..}
instance Property "Value" AliasProperty where
  type PropertyType "Value" AliasProperty = Value Prelude.Text
  set newValue AliasProperty {..}
    = AliasProperty {value = newValue, ..}