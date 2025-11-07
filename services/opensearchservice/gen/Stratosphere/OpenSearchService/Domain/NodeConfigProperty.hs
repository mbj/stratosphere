module Stratosphere.OpenSearchService.Domain.NodeConfigProperty (
        NodeConfigProperty(..), mkNodeConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NodeConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-nodeconfig.html>
    NodeConfigProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-nodeconfig.html#cfn-opensearchservice-domain-nodeconfig-count>
                        count :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-nodeconfig.html#cfn-opensearchservice-domain-nodeconfig-enabled>
                        enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-nodeconfig.html#cfn-opensearchservice-domain-nodeconfig-type>
                        type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNodeConfigProperty :: NodeConfigProperty
mkNodeConfigProperty
  = NodeConfigProperty
      {haddock_workaround_ = (), count = Prelude.Nothing,
       enabled = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties NodeConfigProperty where
  toResourceProperties NodeConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Domain.NodeConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Count" Prelude.<$> count,
                            (JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON NodeConfigProperty where
  toJSON NodeConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Count" Prelude.<$> count,
               (JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Count" NodeConfigProperty where
  type PropertyType "Count" NodeConfigProperty = Value Prelude.Integer
  set newValue NodeConfigProperty {..}
    = NodeConfigProperty {count = Prelude.pure newValue, ..}
instance Property "Enabled" NodeConfigProperty where
  type PropertyType "Enabled" NodeConfigProperty = Value Prelude.Bool
  set newValue NodeConfigProperty {..}
    = NodeConfigProperty {enabled = Prelude.pure newValue, ..}
instance Property "Type" NodeConfigProperty where
  type PropertyType "Type" NodeConfigProperty = Value Prelude.Text
  set newValue NodeConfigProperty {..}
    = NodeConfigProperty {type' = Prelude.pure newValue, ..}