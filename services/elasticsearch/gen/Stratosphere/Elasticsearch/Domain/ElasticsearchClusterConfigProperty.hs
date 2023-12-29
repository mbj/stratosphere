module Stratosphere.Elasticsearch.Domain.ElasticsearchClusterConfigProperty (
        module Exports, ElasticsearchClusterConfigProperty(..),
        mkElasticsearchClusterConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Elasticsearch.Domain.ColdStorageOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.Elasticsearch.Domain.ZoneAwarenessConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ElasticsearchClusterConfigProperty
  = ElasticsearchClusterConfigProperty {coldStorageOptions :: (Prelude.Maybe ColdStorageOptionsProperty),
                                        dedicatedMasterCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                        dedicatedMasterEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                        dedicatedMasterType :: (Prelude.Maybe (Value Prelude.Text)),
                                        instanceCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                        instanceType :: (Prelude.Maybe (Value Prelude.Text)),
                                        warmCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                        warmEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                        warmType :: (Prelude.Maybe (Value Prelude.Text)),
                                        zoneAwarenessConfig :: (Prelude.Maybe ZoneAwarenessConfigProperty),
                                        zoneAwarenessEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkElasticsearchClusterConfigProperty ::
  ElasticsearchClusterConfigProperty
mkElasticsearchClusterConfigProperty
  = ElasticsearchClusterConfigProperty
      {coldStorageOptions = Prelude.Nothing,
       dedicatedMasterCount = Prelude.Nothing,
       dedicatedMasterEnabled = Prelude.Nothing,
       dedicatedMasterType = Prelude.Nothing,
       instanceCount = Prelude.Nothing, instanceType = Prelude.Nothing,
       warmCount = Prelude.Nothing, warmEnabled = Prelude.Nothing,
       warmType = Prelude.Nothing, zoneAwarenessConfig = Prelude.Nothing,
       zoneAwarenessEnabled = Prelude.Nothing}
instance ToResourceProperties ElasticsearchClusterConfigProperty where
  toResourceProperties ElasticsearchClusterConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Elasticsearch::Domain.ElasticsearchClusterConfig",
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
                            (JSON..=) "WarmCount" Prelude.<$> warmCount,
                            (JSON..=) "WarmEnabled" Prelude.<$> warmEnabled,
                            (JSON..=) "WarmType" Prelude.<$> warmType,
                            (JSON..=) "ZoneAwarenessConfig" Prelude.<$> zoneAwarenessConfig,
                            (JSON..=) "ZoneAwarenessEnabled"
                              Prelude.<$> zoneAwarenessEnabled])}
instance JSON.ToJSON ElasticsearchClusterConfigProperty where
  toJSON ElasticsearchClusterConfigProperty {..}
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
               (JSON..=) "WarmCount" Prelude.<$> warmCount,
               (JSON..=) "WarmEnabled" Prelude.<$> warmEnabled,
               (JSON..=) "WarmType" Prelude.<$> warmType,
               (JSON..=) "ZoneAwarenessConfig" Prelude.<$> zoneAwarenessConfig,
               (JSON..=) "ZoneAwarenessEnabled"
                 Prelude.<$> zoneAwarenessEnabled]))
instance Property "ColdStorageOptions" ElasticsearchClusterConfigProperty where
  type PropertyType "ColdStorageOptions" ElasticsearchClusterConfigProperty = ColdStorageOptionsProperty
  set newValue ElasticsearchClusterConfigProperty {..}
    = ElasticsearchClusterConfigProperty
        {coldStorageOptions = Prelude.pure newValue, ..}
instance Property "DedicatedMasterCount" ElasticsearchClusterConfigProperty where
  type PropertyType "DedicatedMasterCount" ElasticsearchClusterConfigProperty = Value Prelude.Integer
  set newValue ElasticsearchClusterConfigProperty {..}
    = ElasticsearchClusterConfigProperty
        {dedicatedMasterCount = Prelude.pure newValue, ..}
instance Property "DedicatedMasterEnabled" ElasticsearchClusterConfigProperty where
  type PropertyType "DedicatedMasterEnabled" ElasticsearchClusterConfigProperty = Value Prelude.Bool
  set newValue ElasticsearchClusterConfigProperty {..}
    = ElasticsearchClusterConfigProperty
        {dedicatedMasterEnabled = Prelude.pure newValue, ..}
instance Property "DedicatedMasterType" ElasticsearchClusterConfigProperty where
  type PropertyType "DedicatedMasterType" ElasticsearchClusterConfigProperty = Value Prelude.Text
  set newValue ElasticsearchClusterConfigProperty {..}
    = ElasticsearchClusterConfigProperty
        {dedicatedMasterType = Prelude.pure newValue, ..}
instance Property "InstanceCount" ElasticsearchClusterConfigProperty where
  type PropertyType "InstanceCount" ElasticsearchClusterConfigProperty = Value Prelude.Integer
  set newValue ElasticsearchClusterConfigProperty {..}
    = ElasticsearchClusterConfigProperty
        {instanceCount = Prelude.pure newValue, ..}
instance Property "InstanceType" ElasticsearchClusterConfigProperty where
  type PropertyType "InstanceType" ElasticsearchClusterConfigProperty = Value Prelude.Text
  set newValue ElasticsearchClusterConfigProperty {..}
    = ElasticsearchClusterConfigProperty
        {instanceType = Prelude.pure newValue, ..}
instance Property "WarmCount" ElasticsearchClusterConfigProperty where
  type PropertyType "WarmCount" ElasticsearchClusterConfigProperty = Value Prelude.Integer
  set newValue ElasticsearchClusterConfigProperty {..}
    = ElasticsearchClusterConfigProperty
        {warmCount = Prelude.pure newValue, ..}
instance Property "WarmEnabled" ElasticsearchClusterConfigProperty where
  type PropertyType "WarmEnabled" ElasticsearchClusterConfigProperty = Value Prelude.Bool
  set newValue ElasticsearchClusterConfigProperty {..}
    = ElasticsearchClusterConfigProperty
        {warmEnabled = Prelude.pure newValue, ..}
instance Property "WarmType" ElasticsearchClusterConfigProperty where
  type PropertyType "WarmType" ElasticsearchClusterConfigProperty = Value Prelude.Text
  set newValue ElasticsearchClusterConfigProperty {..}
    = ElasticsearchClusterConfigProperty
        {warmType = Prelude.pure newValue, ..}
instance Property "ZoneAwarenessConfig" ElasticsearchClusterConfigProperty where
  type PropertyType "ZoneAwarenessConfig" ElasticsearchClusterConfigProperty = ZoneAwarenessConfigProperty
  set newValue ElasticsearchClusterConfigProperty {..}
    = ElasticsearchClusterConfigProperty
        {zoneAwarenessConfig = Prelude.pure newValue, ..}
instance Property "ZoneAwarenessEnabled" ElasticsearchClusterConfigProperty where
  type PropertyType "ZoneAwarenessEnabled" ElasticsearchClusterConfigProperty = Value Prelude.Bool
  set newValue ElasticsearchClusterConfigProperty {..}
    = ElasticsearchClusterConfigProperty
        {zoneAwarenessEnabled = Prelude.pure newValue, ..}