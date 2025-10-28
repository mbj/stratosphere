module Stratosphere.Elasticsearch.Domain (
        module Exports, Domain(..), mkDomain
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Elasticsearch.Domain.AdvancedSecurityOptionsInputProperty as Exports
import {-# SOURCE #-} Stratosphere.Elasticsearch.Domain.CognitoOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.Elasticsearch.Domain.DomainEndpointOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.Elasticsearch.Domain.EBSOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.Elasticsearch.Domain.ElasticsearchClusterConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Elasticsearch.Domain.EncryptionAtRestOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.Elasticsearch.Domain.LogPublishingOptionProperty as Exports
import {-# SOURCE #-} Stratosphere.Elasticsearch.Domain.NodeToNodeEncryptionOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.Elasticsearch.Domain.SnapshotOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.Elasticsearch.Domain.VPCOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Domain
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html>
    Domain {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-accesspolicies>
            accessPolicies :: (Prelude.Maybe JSON.Object),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-advancedoptions>
            advancedOptions :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-advancedsecurityoptions>
            advancedSecurityOptions :: (Prelude.Maybe AdvancedSecurityOptionsInputProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-cognitooptions>
            cognitoOptions :: (Prelude.Maybe CognitoOptionsProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-domainendpointoptions>
            domainEndpointOptions :: (Prelude.Maybe DomainEndpointOptionsProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-domainname>
            domainName :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-ebsoptions>
            eBSOptions :: (Prelude.Maybe EBSOptionsProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-elasticsearchclusterconfig>
            elasticsearchClusterConfig :: (Prelude.Maybe ElasticsearchClusterConfigProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-elasticsearchversion>
            elasticsearchVersion :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-encryptionatrestoptions>
            encryptionAtRestOptions :: (Prelude.Maybe EncryptionAtRestOptionsProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-logpublishingoptions>
            logPublishingOptions :: (Prelude.Maybe (Prelude.Map Prelude.Text LogPublishingOptionProperty)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-nodetonodeencryptionoptions>
            nodeToNodeEncryptionOptions :: (Prelude.Maybe NodeToNodeEncryptionOptionsProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-snapshotoptions>
            snapshotOptions :: (Prelude.Maybe SnapshotOptionsProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-tags>
            tags :: (Prelude.Maybe [Tag]),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-vpcoptions>
            vPCOptions :: (Prelude.Maybe VPCOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomain :: Domain
mkDomain
  = Domain
      {haddock_workaround_ = (), accessPolicies = Prelude.Nothing,
       advancedOptions = Prelude.Nothing,
       advancedSecurityOptions = Prelude.Nothing,
       cognitoOptions = Prelude.Nothing,
       domainEndpointOptions = Prelude.Nothing,
       domainName = Prelude.Nothing, eBSOptions = Prelude.Nothing,
       elasticsearchClusterConfig = Prelude.Nothing,
       elasticsearchVersion = Prelude.Nothing,
       encryptionAtRestOptions = Prelude.Nothing,
       logPublishingOptions = Prelude.Nothing,
       nodeToNodeEncryptionOptions = Prelude.Nothing,
       snapshotOptions = Prelude.Nothing, tags = Prelude.Nothing,
       vPCOptions = Prelude.Nothing}
instance ToResourceProperties Domain where
  toResourceProperties Domain {..}
    = ResourceProperties
        {awsType = "AWS::Elasticsearch::Domain",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccessPolicies" Prelude.<$> accessPolicies,
                            (JSON..=) "AdvancedOptions" Prelude.<$> advancedOptions,
                            (JSON..=) "AdvancedSecurityOptions"
                              Prelude.<$> advancedSecurityOptions,
                            (JSON..=) "CognitoOptions" Prelude.<$> cognitoOptions,
                            (JSON..=) "DomainEndpointOptions"
                              Prelude.<$> domainEndpointOptions,
                            (JSON..=) "DomainName" Prelude.<$> domainName,
                            (JSON..=) "EBSOptions" Prelude.<$> eBSOptions,
                            (JSON..=) "ElasticsearchClusterConfig"
                              Prelude.<$> elasticsearchClusterConfig,
                            (JSON..=) "ElasticsearchVersion" Prelude.<$> elasticsearchVersion,
                            (JSON..=) "EncryptionAtRestOptions"
                              Prelude.<$> encryptionAtRestOptions,
                            (JSON..=) "LogPublishingOptions" Prelude.<$> logPublishingOptions,
                            (JSON..=) "NodeToNodeEncryptionOptions"
                              Prelude.<$> nodeToNodeEncryptionOptions,
                            (JSON..=) "SnapshotOptions" Prelude.<$> snapshotOptions,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "VPCOptions" Prelude.<$> vPCOptions])}
instance JSON.ToJSON Domain where
  toJSON Domain {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccessPolicies" Prelude.<$> accessPolicies,
               (JSON..=) "AdvancedOptions" Prelude.<$> advancedOptions,
               (JSON..=) "AdvancedSecurityOptions"
                 Prelude.<$> advancedSecurityOptions,
               (JSON..=) "CognitoOptions" Prelude.<$> cognitoOptions,
               (JSON..=) "DomainEndpointOptions"
                 Prelude.<$> domainEndpointOptions,
               (JSON..=) "DomainName" Prelude.<$> domainName,
               (JSON..=) "EBSOptions" Prelude.<$> eBSOptions,
               (JSON..=) "ElasticsearchClusterConfig"
                 Prelude.<$> elasticsearchClusterConfig,
               (JSON..=) "ElasticsearchVersion" Prelude.<$> elasticsearchVersion,
               (JSON..=) "EncryptionAtRestOptions"
                 Prelude.<$> encryptionAtRestOptions,
               (JSON..=) "LogPublishingOptions" Prelude.<$> logPublishingOptions,
               (JSON..=) "NodeToNodeEncryptionOptions"
                 Prelude.<$> nodeToNodeEncryptionOptions,
               (JSON..=) "SnapshotOptions" Prelude.<$> snapshotOptions,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "VPCOptions" Prelude.<$> vPCOptions]))
instance Property "AccessPolicies" Domain where
  type PropertyType "AccessPolicies" Domain = JSON.Object
  set newValue Domain {..}
    = Domain {accessPolicies = Prelude.pure newValue, ..}
instance Property "AdvancedOptions" Domain where
  type PropertyType "AdvancedOptions" Domain = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Domain {..}
    = Domain {advancedOptions = Prelude.pure newValue, ..}
instance Property "AdvancedSecurityOptions" Domain where
  type PropertyType "AdvancedSecurityOptions" Domain = AdvancedSecurityOptionsInputProperty
  set newValue Domain {..}
    = Domain {advancedSecurityOptions = Prelude.pure newValue, ..}
instance Property "CognitoOptions" Domain where
  type PropertyType "CognitoOptions" Domain = CognitoOptionsProperty
  set newValue Domain {..}
    = Domain {cognitoOptions = Prelude.pure newValue, ..}
instance Property "DomainEndpointOptions" Domain where
  type PropertyType "DomainEndpointOptions" Domain = DomainEndpointOptionsProperty
  set newValue Domain {..}
    = Domain {domainEndpointOptions = Prelude.pure newValue, ..}
instance Property "DomainName" Domain where
  type PropertyType "DomainName" Domain = Value Prelude.Text
  set newValue Domain {..}
    = Domain {domainName = Prelude.pure newValue, ..}
instance Property "EBSOptions" Domain where
  type PropertyType "EBSOptions" Domain = EBSOptionsProperty
  set newValue Domain {..}
    = Domain {eBSOptions = Prelude.pure newValue, ..}
instance Property "ElasticsearchClusterConfig" Domain where
  type PropertyType "ElasticsearchClusterConfig" Domain = ElasticsearchClusterConfigProperty
  set newValue Domain {..}
    = Domain {elasticsearchClusterConfig = Prelude.pure newValue, ..}
instance Property "ElasticsearchVersion" Domain where
  type PropertyType "ElasticsearchVersion" Domain = Value Prelude.Text
  set newValue Domain {..}
    = Domain {elasticsearchVersion = Prelude.pure newValue, ..}
instance Property "EncryptionAtRestOptions" Domain where
  type PropertyType "EncryptionAtRestOptions" Domain = EncryptionAtRestOptionsProperty
  set newValue Domain {..}
    = Domain {encryptionAtRestOptions = Prelude.pure newValue, ..}
instance Property "LogPublishingOptions" Domain where
  type PropertyType "LogPublishingOptions" Domain = Prelude.Map Prelude.Text LogPublishingOptionProperty
  set newValue Domain {..}
    = Domain {logPublishingOptions = Prelude.pure newValue, ..}
instance Property "NodeToNodeEncryptionOptions" Domain where
  type PropertyType "NodeToNodeEncryptionOptions" Domain = NodeToNodeEncryptionOptionsProperty
  set newValue Domain {..}
    = Domain {nodeToNodeEncryptionOptions = Prelude.pure newValue, ..}
instance Property "SnapshotOptions" Domain where
  type PropertyType "SnapshotOptions" Domain = SnapshotOptionsProperty
  set newValue Domain {..}
    = Domain {snapshotOptions = Prelude.pure newValue, ..}
instance Property "Tags" Domain where
  type PropertyType "Tags" Domain = [Tag]
  set newValue Domain {..}
    = Domain {tags = Prelude.pure newValue, ..}
instance Property "VPCOptions" Domain where
  type PropertyType "VPCOptions" Domain = VPCOptionsProperty
  set newValue Domain {..}
    = Domain {vPCOptions = Prelude.pure newValue, ..}