module Stratosphere.OpenSearchService.Domain.ClusterConfigProperty (
        module Exports, ClusterConfigProperty(..), mkClusterConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.OpenSearchService.Domain.ColdStorageOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.OpenSearchService.Domain.ZoneAwarenessConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClusterConfigProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-clusterconfig.html>
    ClusterConfigProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-clusterconfig.html#cfn-opensearchservice-domain-clusterconfig-coldstorageoptions>
                           coldStorageOptions :: (Prelude.Maybe ColdStorageOptionsProperty),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-clusterconfig.html#cfn-opensearchservice-domain-clusterconfig-dedicatedmastercount>
                           dedicatedMasterCount :: (Prelude.Maybe (Value Prelude.Integer)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-clusterconfig.html#cfn-opensearchservice-domain-clusterconfig-dedicatedmasterenabled>
                           dedicatedMasterEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-clusterconfig.html#cfn-opensearchservice-domain-clusterconfig-dedicatedmastertype>
                           dedicatedMasterType :: (Prelude.Maybe (Value Prelude.Text)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-clusterconfig.html#cfn-opensearchservice-domain-clusterconfig-instancecount>
                           instanceCount :: (Prelude.Maybe (Value Prelude.Integer)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-clusterconfig.html#cfn-opensearchservice-domain-clusterconfig-instancetype>
                           instanceType :: (Prelude.Maybe (Value Prelude.Text)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-clusterconfig.html#cfn-opensearchservice-domain-clusterconfig-multiazwithstandbyenabled>
                           multiAZWithStandbyEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-clusterconfig.html#cfn-opensearchservice-domain-clusterconfig-warmcount>
                           warmCount :: (Prelude.Maybe (Value Prelude.Integer)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-clusterconfig.html#cfn-opensearchservice-domain-clusterconfig-warmenabled>
                           warmEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-clusterconfig.html#cfn-opensearchservice-domain-clusterconfig-warmtype>
                           warmType :: (Prelude.Maybe (Value Prelude.Text)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-clusterconfig.html#cfn-opensearchservice-domain-clusterconfig-zoneawarenessconfig>
                           zoneAwarenessConfig :: (Prelude.Maybe ZoneAwarenessConfigProperty),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-clusterconfig.html#cfn-opensearchservice-domain-clusterconfig-zoneawarenessenabled>
                           zoneAwarenessEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClusterConfigProperty :: ClusterConfigProperty
mkClusterConfigProperty
  = ClusterConfigProperty
      {coldStorageOptions = Prelude.Nothing,
       dedicatedMasterCount = Prelude.Nothing,
       dedicatedMasterEnabled = Prelude.Nothing,
       dedicatedMasterType = Prelude.Nothing,
       instanceCount = Prelude.Nothing, instanceType = Prelude.Nothing,
       multiAZWithStandbyEnabled = Prelude.Nothing,
       warmCount = Prelude.Nothing, warmEnabled = Prelude.Nothing,
       warmType = Prelude.Nothing, zoneAwarenessConfig = Prelude.Nothing,
       zoneAwarenessEnabled = Prelude.Nothing}
instance ToResourceProperties ClusterConfigProperty where
  toResourceProperties ClusterConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Domain.ClusterConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ColdStorageOptions" Prelude.<$> coldStorageOptions,
                            (JSON..=) "DedicatedMasterCount" Prelude.<$> dedicatedMasterCount,
                            (JSON..=) "DedicatedMasterEnabled"
                              Prelude.<$> dedicatedMasterEnabled,
                            (JSON..=) "DedicatedMasterType" Prelude.<$> dedicatedMasterType,
                            (JSON..=) "InstanceCount" Prelude.<$> instanceCount,
                            (JSON..=) "InstanceType" Prelude.<$> instanceType,
                            (JSON..=) "MultiAZWithStandbyEnabled"
                              Prelude.<$> multiAZWithStandbyEnabled,
                            (JSON..=) "WarmCount" Prelude.<$> warmCount,
                            (JSON..=) "WarmEnabled" Prelude.<$> warmEnabled,
                            (JSON..=) "WarmType" Prelude.<$> warmType,
                            (JSON..=) "ZoneAwarenessConfig" Prelude.<$> zoneAwarenessConfig,
                            (JSON..=) "ZoneAwarenessEnabled"
                              Prelude.<$> zoneAwarenessEnabled])}
instance JSON.ToJSON ClusterConfigProperty where
  toJSON ClusterConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ColdStorageOptions" Prelude.<$> coldStorageOptions,
               (JSON..=) "DedicatedMasterCount" Prelude.<$> dedicatedMasterCount,
               (JSON..=) "DedicatedMasterEnabled"
                 Prelude.<$> dedicatedMasterEnabled,
               (JSON..=) "DedicatedMasterType" Prelude.<$> dedicatedMasterType,
               (JSON..=) "InstanceCount" Prelude.<$> instanceCount,
               (JSON..=) "InstanceType" Prelude.<$> instanceType,
               (JSON..=) "MultiAZWithStandbyEnabled"
                 Prelude.<$> multiAZWithStandbyEnabled,
               (JSON..=) "WarmCount" Prelude.<$> warmCount,
               (JSON..=) "WarmEnabled" Prelude.<$> warmEnabled,
               (JSON..=) "WarmType" Prelude.<$> warmType,
               (JSON..=) "ZoneAwarenessConfig" Prelude.<$> zoneAwarenessConfig,
               (JSON..=) "ZoneAwarenessEnabled"
                 Prelude.<$> zoneAwarenessEnabled]))
instance Property "ColdStorageOptions" ClusterConfigProperty where
  type PropertyType "ColdStorageOptions" ClusterConfigProperty = ColdStorageOptionsProperty
  set newValue ClusterConfigProperty {..}
    = ClusterConfigProperty
        {coldStorageOptions = Prelude.pure newValue, ..}
instance Property "DedicatedMasterCount" ClusterConfigProperty where
  type PropertyType "DedicatedMasterCount" ClusterConfigProperty = Value Prelude.Integer
  set newValue ClusterConfigProperty {..}
    = ClusterConfigProperty
        {dedicatedMasterCount = Prelude.pure newValue, ..}
instance Property "DedicatedMasterEnabled" ClusterConfigProperty where
  type PropertyType "DedicatedMasterEnabled" ClusterConfigProperty = Value Prelude.Bool
  set newValue ClusterConfigProperty {..}
    = ClusterConfigProperty
        {dedicatedMasterEnabled = Prelude.pure newValue, ..}
instance Property "DedicatedMasterType" ClusterConfigProperty where
  type PropertyType "DedicatedMasterType" ClusterConfigProperty = Value Prelude.Text
  set newValue ClusterConfigProperty {..}
    = ClusterConfigProperty
        {dedicatedMasterType = Prelude.pure newValue, ..}
instance Property "InstanceCount" ClusterConfigProperty where
  type PropertyType "InstanceCount" ClusterConfigProperty = Value Prelude.Integer
  set newValue ClusterConfigProperty {..}
    = ClusterConfigProperty {instanceCount = Prelude.pure newValue, ..}
instance Property "InstanceType" ClusterConfigProperty where
  type PropertyType "InstanceType" ClusterConfigProperty = Value Prelude.Text
  set newValue ClusterConfigProperty {..}
    = ClusterConfigProperty {instanceType = Prelude.pure newValue, ..}
instance Property "MultiAZWithStandbyEnabled" ClusterConfigProperty where
  type PropertyType "MultiAZWithStandbyEnabled" ClusterConfigProperty = Value Prelude.Bool
  set newValue ClusterConfigProperty {..}
    = ClusterConfigProperty
        {multiAZWithStandbyEnabled = Prelude.pure newValue, ..}
instance Property "WarmCount" ClusterConfigProperty where
  type PropertyType "WarmCount" ClusterConfigProperty = Value Prelude.Integer
  set newValue ClusterConfigProperty {..}
    = ClusterConfigProperty {warmCount = Prelude.pure newValue, ..}
instance Property "WarmEnabled" ClusterConfigProperty where
  type PropertyType "WarmEnabled" ClusterConfigProperty = Value Prelude.Bool
  set newValue ClusterConfigProperty {..}
    = ClusterConfigProperty {warmEnabled = Prelude.pure newValue, ..}
instance Property "WarmType" ClusterConfigProperty where
  type PropertyType "WarmType" ClusterConfigProperty = Value Prelude.Text
  set newValue ClusterConfigProperty {..}
    = ClusterConfigProperty {warmType = Prelude.pure newValue, ..}
instance Property "ZoneAwarenessConfig" ClusterConfigProperty where
  type PropertyType "ZoneAwarenessConfig" ClusterConfigProperty = ZoneAwarenessConfigProperty
  set newValue ClusterConfigProperty {..}
    = ClusterConfigProperty
        {zoneAwarenessConfig = Prelude.pure newValue, ..}
instance Property "ZoneAwarenessEnabled" ClusterConfigProperty where
  type PropertyType "ZoneAwarenessEnabled" ClusterConfigProperty = Value Prelude.Bool
  set newValue ClusterConfigProperty {..}
    = ClusterConfigProperty
        {zoneAwarenessEnabled = Prelude.pure newValue, ..}