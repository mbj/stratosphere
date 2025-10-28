module Stratosphere.Elasticsearch.Domain.NodeToNodeEncryptionOptionsProperty (
        NodeToNodeEncryptionOptionsProperty(..),
        mkNodeToNodeEncryptionOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NodeToNodeEncryptionOptionsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-nodetonodeencryptionoptions.html>
    NodeToNodeEncryptionOptionsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-nodetonodeencryptionoptions.html#cfn-elasticsearch-domain-nodetonodeencryptionoptions-enabled>
                                         enabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNodeToNodeEncryptionOptionsProperty ::
  NodeToNodeEncryptionOptionsProperty
mkNodeToNodeEncryptionOptionsProperty
  = NodeToNodeEncryptionOptionsProperty {enabled = Prelude.Nothing}
instance ToResourceProperties NodeToNodeEncryptionOptionsProperty where
  toResourceProperties NodeToNodeEncryptionOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Elasticsearch::Domain.NodeToNodeEncryptionOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON NodeToNodeEncryptionOptionsProperty where
  toJSON NodeToNodeEncryptionOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "Enabled" NodeToNodeEncryptionOptionsProperty where
  type PropertyType "Enabled" NodeToNodeEncryptionOptionsProperty = Value Prelude.Bool
  set newValue NodeToNodeEncryptionOptionsProperty {}
    = NodeToNodeEncryptionOptionsProperty
        {enabled = Prelude.pure newValue, ..}