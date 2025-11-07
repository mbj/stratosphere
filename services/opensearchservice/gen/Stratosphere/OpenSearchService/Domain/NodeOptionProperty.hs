module Stratosphere.OpenSearchService.Domain.NodeOptionProperty (
        module Exports, NodeOptionProperty(..), mkNodeOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.OpenSearchService.Domain.NodeConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NodeOptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-nodeoption.html>
    NodeOptionProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-nodeoption.html#cfn-opensearchservice-domain-nodeoption-nodeconfig>
                        nodeConfig :: (Prelude.Maybe NodeConfigProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-nodeoption.html#cfn-opensearchservice-domain-nodeoption-nodetype>
                        nodeType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNodeOptionProperty :: NodeOptionProperty
mkNodeOptionProperty
  = NodeOptionProperty
      {haddock_workaround_ = (), nodeConfig = Prelude.Nothing,
       nodeType = Prelude.Nothing}
instance ToResourceProperties NodeOptionProperty where
  toResourceProperties NodeOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Domain.NodeOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NodeConfig" Prelude.<$> nodeConfig,
                            (JSON..=) "NodeType" Prelude.<$> nodeType])}
instance JSON.ToJSON NodeOptionProperty where
  toJSON NodeOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NodeConfig" Prelude.<$> nodeConfig,
               (JSON..=) "NodeType" Prelude.<$> nodeType]))
instance Property "NodeConfig" NodeOptionProperty where
  type PropertyType "NodeConfig" NodeOptionProperty = NodeConfigProperty
  set newValue NodeOptionProperty {..}
    = NodeOptionProperty {nodeConfig = Prelude.pure newValue, ..}
instance Property "NodeType" NodeOptionProperty where
  type PropertyType "NodeType" NodeOptionProperty = Value Prelude.Text
  set newValue NodeOptionProperty {..}
    = NodeOptionProperty {nodeType = Prelude.pure newValue, ..}