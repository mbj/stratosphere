module Stratosphere.Logs.Transformer.DeleteKeysProperty (
        DeleteKeysProperty(..), mkDeleteKeysProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeleteKeysProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-deletekeys.html>
    DeleteKeysProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-deletekeys.html#cfn-logs-transformer-deletekeys-withkeys>
                        withKeys :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeleteKeysProperty ::
  ValueList Prelude.Text -> DeleteKeysProperty
mkDeleteKeysProperty withKeys
  = DeleteKeysProperty
      {haddock_workaround_ = (), withKeys = withKeys}
instance ToResourceProperties DeleteKeysProperty where
  toResourceProperties DeleteKeysProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.DeleteKeys",
         supportsTags = Prelude.False,
         properties = ["WithKeys" JSON..= withKeys]}
instance JSON.ToJSON DeleteKeysProperty where
  toJSON DeleteKeysProperty {..}
    = JSON.object ["WithKeys" JSON..= withKeys]
instance Property "WithKeys" DeleteKeysProperty where
  type PropertyType "WithKeys" DeleteKeysProperty = ValueList Prelude.Text
  set newValue DeleteKeysProperty {..}
    = DeleteKeysProperty {withKeys = newValue, ..}