module Stratosphere.Logs.Transformer.TrimStringProperty (
        TrimStringProperty(..), mkTrimStringProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrimStringProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-trimstring.html>
    TrimStringProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-trimstring.html#cfn-logs-transformer-trimstring-withkeys>
                        withKeys :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrimStringProperty ::
  ValueList Prelude.Text -> TrimStringProperty
mkTrimStringProperty withKeys
  = TrimStringProperty
      {haddock_workaround_ = (), withKeys = withKeys}
instance ToResourceProperties TrimStringProperty where
  toResourceProperties TrimStringProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.TrimString",
         supportsTags = Prelude.False,
         properties = ["WithKeys" JSON..= withKeys]}
instance JSON.ToJSON TrimStringProperty where
  toJSON TrimStringProperty {..}
    = JSON.object ["WithKeys" JSON..= withKeys]
instance Property "WithKeys" TrimStringProperty where
  type PropertyType "WithKeys" TrimStringProperty = ValueList Prelude.Text
  set newValue TrimStringProperty {..}
    = TrimStringProperty {withKeys = newValue, ..}