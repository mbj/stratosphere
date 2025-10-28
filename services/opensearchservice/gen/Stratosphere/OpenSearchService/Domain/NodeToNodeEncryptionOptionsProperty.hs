module Stratosphere.OpenSearchService.Domain.NodeToNodeEncryptionOptionsProperty (
        NodeToNodeEncryptionOptionsProperty(..),
        mkNodeToNodeEncryptionOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NodeToNodeEncryptionOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-nodetonodeencryptionoptions.html>
    NodeToNodeEncryptionOptionsProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-nodetonodeencryptionoptions.html#cfn-opensearchservice-domain-nodetonodeencryptionoptions-enabled>
                                         enabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNodeToNodeEncryptionOptionsProperty ::
  NodeToNodeEncryptionOptionsProperty
mkNodeToNodeEncryptionOptionsProperty
  = NodeToNodeEncryptionOptionsProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing}
instance ToResourceProperties NodeToNodeEncryptionOptionsProperty where
  toResourceProperties NodeToNodeEncryptionOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Domain.NodeToNodeEncryptionOptions",
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
  set newValue NodeToNodeEncryptionOptionsProperty {..}
    = NodeToNodeEncryptionOptionsProperty
        {enabled = Prelude.pure newValue, ..}