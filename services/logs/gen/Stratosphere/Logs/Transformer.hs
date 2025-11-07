module Stratosphere.Logs.Transformer (
        module Exports, Transformer(..), mkTransformer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Logs.Transformer.ProcessorProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Transformer
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-transformer.html>
    Transformer {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-transformer.html#cfn-logs-transformer-loggroupidentifier>
                 logGroupIdentifier :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-transformer.html#cfn-logs-transformer-transformerconfig>
                 transformerConfig :: [ProcessorProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransformer ::
  Value Prelude.Text -> [ProcessorProperty] -> Transformer
mkTransformer logGroupIdentifier transformerConfig
  = Transformer
      {haddock_workaround_ = (), logGroupIdentifier = logGroupIdentifier,
       transformerConfig = transformerConfig}
instance ToResourceProperties Transformer where
  toResourceProperties Transformer {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer", supportsTags = Prelude.False,
         properties = ["LogGroupIdentifier" JSON..= logGroupIdentifier,
                       "TransformerConfig" JSON..= transformerConfig]}
instance JSON.ToJSON Transformer where
  toJSON Transformer {..}
    = JSON.object
        ["LogGroupIdentifier" JSON..= logGroupIdentifier,
         "TransformerConfig" JSON..= transformerConfig]
instance Property "LogGroupIdentifier" Transformer where
  type PropertyType "LogGroupIdentifier" Transformer = Value Prelude.Text
  set newValue Transformer {..}
    = Transformer {logGroupIdentifier = newValue, ..}
instance Property "TransformerConfig" Transformer where
  type PropertyType "TransformerConfig" Transformer = [ProcessorProperty]
  set newValue Transformer {..}
    = Transformer {transformerConfig = newValue, ..}