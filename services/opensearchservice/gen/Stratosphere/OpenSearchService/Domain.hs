module Stratosphere.OpenSearchService.Domain (
        module Exports, Domain(..), mkDomain
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.OpenSearchService.Domain.AdvancedSecurityOptionsInputProperty as Exports
import {-# SOURCE #-} Stratosphere.OpenSearchService.Domain.ClusterConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.OpenSearchService.Domain.CognitoOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.OpenSearchService.Domain.DomainEndpointOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.OpenSearchService.Domain.EBSOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.OpenSearchService.Domain.EncryptionAtRestOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.OpenSearchService.Domain.IdentityCenterOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.OpenSearchService.Domain.LogPublishingOptionProperty as Exports
import {-# SOURCE #-} Stratosphere.OpenSearchService.Domain.NodeToNodeEncryptionOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.OpenSearchService.Domain.OffPeakWindowOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.OpenSearchService.Domain.SnapshotOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.OpenSearchService.Domain.SoftwareUpdateOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.OpenSearchService.Domain.VPCOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Domain
  = Domain {accessPolicies :: (Prelude.Maybe JSON.Object),
            advancedOptions :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
            advancedSecurityOptions :: (Prelude.Maybe AdvancedSecurityOptionsInputProperty),
            clusterConfig :: (Prelude.Maybe ClusterConfigProperty),
            cognitoOptions :: (Prelude.Maybe CognitoOptionsProperty),
            domainEndpointOptions :: (Prelude.Maybe DomainEndpointOptionsProperty),
            domainName :: (Prelude.Maybe (Value Prelude.Text)),
            eBSOptions :: (Prelude.Maybe EBSOptionsProperty),
            encryptionAtRestOptions :: (Prelude.Maybe EncryptionAtRestOptionsProperty),
            engineVersion :: (Prelude.Maybe (Value Prelude.Text)),
            iPAddressType :: (Prelude.Maybe (Value Prelude.Text)),
            identityCenterOptions :: (Prelude.Maybe IdentityCenterOptionsProperty),
            logPublishingOptions :: (Prelude.Maybe (Prelude.Map Prelude.Text LogPublishingOptionProperty)),
            nodeToNodeEncryptionOptions :: (Prelude.Maybe NodeToNodeEncryptionOptionsProperty),
            offPeakWindowOptions :: (Prelude.Maybe OffPeakWindowOptionsProperty),
            skipShardMigrationWait :: (Prelude.Maybe (Value Prelude.Bool)),
            snapshotOptions :: (Prelude.Maybe SnapshotOptionsProperty),
            softwareUpdateOptions :: (Prelude.Maybe SoftwareUpdateOptionsProperty),
            tags :: (Prelude.Maybe [Tag]),
            vPCOptions :: (Prelude.Maybe VPCOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomain :: Domain
mkDomain
  = Domain
      {accessPolicies = Prelude.Nothing,
       advancedOptions = Prelude.Nothing,
       advancedSecurityOptions = Prelude.Nothing,
       clusterConfig = Prelude.Nothing, cognitoOptions = Prelude.Nothing,
       domainEndpointOptions = Prelude.Nothing,
       domainName = Prelude.Nothing, eBSOptions = Prelude.Nothing,
       encryptionAtRestOptions = Prelude.Nothing,
       engineVersion = Prelude.Nothing, iPAddressType = Prelude.Nothing,
       identityCenterOptions = Prelude.Nothing,
       logPublishingOptions = Prelude.Nothing,
       nodeToNodeEncryptionOptions = Prelude.Nothing,
       offPeakWindowOptions = Prelude.Nothing,
       skipShardMigrationWait = Prelude.Nothing,
       snapshotOptions = Prelude.Nothing,
       softwareUpdateOptions = Prelude.Nothing, tags = Prelude.Nothing,
       vPCOptions = Prelude.Nothing}
instance ToResourceProperties Domain where
  toResourceProperties Domain {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Domain",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccessPolicies" Prelude.<$> accessPolicies,
                            (JSON..=) "AdvancedOptions" Prelude.<$> advancedOptions,
                            (JSON..=) "AdvancedSecurityOptions"
                              Prelude.<$> advancedSecurityOptions,
                            (JSON..=) "ClusterConfig" Prelude.<$> clusterConfig,
                            (JSON..=) "CognitoOptions" Prelude.<$> cognitoOptions,
                            (JSON..=) "DomainEndpointOptions"
                              Prelude.<$> domainEndpointOptions,
                            (JSON..=) "DomainName" Prelude.<$> domainName,
                            (JSON..=) "EBSOptions" Prelude.<$> eBSOptions,
                            (JSON..=) "EncryptionAtRestOptions"
                              Prelude.<$> encryptionAtRestOptions,
                            (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
                            (JSON..=) "IPAddressType" Prelude.<$> iPAddressType,
                            (JSON..=) "IdentityCenterOptions"
                              Prelude.<$> identityCenterOptions,
                            (JSON..=) "LogPublishingOptions" Prelude.<$> logPublishingOptions,
                            (JSON..=) "NodeToNodeEncryptionOptions"
                              Prelude.<$> nodeToNodeEncryptionOptions,
                            (JSON..=) "OffPeakWindowOptions" Prelude.<$> offPeakWindowOptions,
                            (JSON..=) "SkipShardMigrationWait"
                              Prelude.<$> skipShardMigrationWait,
                            (JSON..=) "SnapshotOptions" Prelude.<$> snapshotOptions,
                            (JSON..=) "SoftwareUpdateOptions"
                              Prelude.<$> softwareUpdateOptions,
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
               (JSON..=) "ClusterConfig" Prelude.<$> clusterConfig,
               (JSON..=) "CognitoOptions" Prelude.<$> cognitoOptions,
               (JSON..=) "DomainEndpointOptions"
                 Prelude.<$> domainEndpointOptions,
               (JSON..=) "DomainName" Prelude.<$> domainName,
               (JSON..=) "EBSOptions" Prelude.<$> eBSOptions,
               (JSON..=) "EncryptionAtRestOptions"
                 Prelude.<$> encryptionAtRestOptions,
               (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
               (JSON..=) "IPAddressType" Prelude.<$> iPAddressType,
               (JSON..=) "IdentityCenterOptions"
                 Prelude.<$> identityCenterOptions,
               (JSON..=) "LogPublishingOptions" Prelude.<$> logPublishingOptions,
               (JSON..=) "NodeToNodeEncryptionOptions"
                 Prelude.<$> nodeToNodeEncryptionOptions,
               (JSON..=) "OffPeakWindowOptions" Prelude.<$> offPeakWindowOptions,
               (JSON..=) "SkipShardMigrationWait"
                 Prelude.<$> skipShardMigrationWait,
               (JSON..=) "SnapshotOptions" Prelude.<$> snapshotOptions,
               (JSON..=) "SoftwareUpdateOptions"
                 Prelude.<$> softwareUpdateOptions,
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
instance Property "ClusterConfig" Domain where
  type PropertyType "ClusterConfig" Domain = ClusterConfigProperty
  set newValue Domain {..}
    = Domain {clusterConfig = Prelude.pure newValue, ..}
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
instance Property "EncryptionAtRestOptions" Domain where
  type PropertyType "EncryptionAtRestOptions" Domain = EncryptionAtRestOptionsProperty
  set newValue Domain {..}
    = Domain {encryptionAtRestOptions = Prelude.pure newValue, ..}
instance Property "EngineVersion" Domain where
  type PropertyType "EngineVersion" Domain = Value Prelude.Text
  set newValue Domain {..}
    = Domain {engineVersion = Prelude.pure newValue, ..}
instance Property "IPAddressType" Domain where
  type PropertyType "IPAddressType" Domain = Value Prelude.Text
  set newValue Domain {..}
    = Domain {iPAddressType = Prelude.pure newValue, ..}
instance Property "IdentityCenterOptions" Domain where
  type PropertyType "IdentityCenterOptions" Domain = IdentityCenterOptionsProperty
  set newValue Domain {..}
    = Domain {identityCenterOptions = Prelude.pure newValue, ..}
instance Property "LogPublishingOptions" Domain where
  type PropertyType "LogPublishingOptions" Domain = Prelude.Map Prelude.Text LogPublishingOptionProperty
  set newValue Domain {..}
    = Domain {logPublishingOptions = Prelude.pure newValue, ..}
instance Property "NodeToNodeEncryptionOptions" Domain where
  type PropertyType "NodeToNodeEncryptionOptions" Domain = NodeToNodeEncryptionOptionsProperty
  set newValue Domain {..}
    = Domain {nodeToNodeEncryptionOptions = Prelude.pure newValue, ..}
instance Property "OffPeakWindowOptions" Domain where
  type PropertyType "OffPeakWindowOptions" Domain = OffPeakWindowOptionsProperty
  set newValue Domain {..}
    = Domain {offPeakWindowOptions = Prelude.pure newValue, ..}
instance Property "SkipShardMigrationWait" Domain where
  type PropertyType "SkipShardMigrationWait" Domain = Value Prelude.Bool
  set newValue Domain {..}
    = Domain {skipShardMigrationWait = Prelude.pure newValue, ..}
instance Property "SnapshotOptions" Domain where
  type PropertyType "SnapshotOptions" Domain = SnapshotOptionsProperty
  set newValue Domain {..}
    = Domain {snapshotOptions = Prelude.pure newValue, ..}
instance Property "SoftwareUpdateOptions" Domain where
  type PropertyType "SoftwareUpdateOptions" Domain = SoftwareUpdateOptionsProperty
  set newValue Domain {..}
    = Domain {softwareUpdateOptions = Prelude.pure newValue, ..}
instance Property "Tags" Domain where
  type PropertyType "Tags" Domain = [Tag]
  set newValue Domain {..}
    = Domain {tags = Prelude.pure newValue, ..}
instance Property "VPCOptions" Domain where
  type PropertyType "VPCOptions" Domain = VPCOptionsProperty
  set newValue Domain {..}
    = Domain {vPCOptions = Prelude.pure newValue, ..}