module Stratosphere.RDS.GlobalCluster (
        module Exports, GlobalCluster(..), mkGlobalCluster
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RDS.GlobalCluster.GlobalEndpointProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data GlobalCluster
  = GlobalCluster {deletionProtection :: (Prelude.Maybe (Value Prelude.Bool)),
                   engine :: (Prelude.Maybe (Value Prelude.Text)),
                   engineLifecycleSupport :: (Prelude.Maybe (Value Prelude.Text)),
                   engineVersion :: (Prelude.Maybe (Value Prelude.Text)),
                   globalClusterIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                   globalEndpoint :: (Prelude.Maybe GlobalEndpointProperty),
                   sourceDBClusterIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                   storageEncrypted :: (Prelude.Maybe (Value Prelude.Bool)),
                   tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGlobalCluster :: GlobalCluster
mkGlobalCluster
  = GlobalCluster
      {deletionProtection = Prelude.Nothing, engine = Prelude.Nothing,
       engineLifecycleSupport = Prelude.Nothing,
       engineVersion = Prelude.Nothing,
       globalClusterIdentifier = Prelude.Nothing,
       globalEndpoint = Prelude.Nothing,
       sourceDBClusterIdentifier = Prelude.Nothing,
       storageEncrypted = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties GlobalCluster where
  toResourceProperties GlobalCluster {..}
    = ResourceProperties
        {awsType = "AWS::RDS::GlobalCluster", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DeletionProtection" Prelude.<$> deletionProtection,
                            (JSON..=) "Engine" Prelude.<$> engine,
                            (JSON..=) "EngineLifecycleSupport"
                              Prelude.<$> engineLifecycleSupport,
                            (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
                            (JSON..=) "GlobalClusterIdentifier"
                              Prelude.<$> globalClusterIdentifier,
                            (JSON..=) "GlobalEndpoint" Prelude.<$> globalEndpoint,
                            (JSON..=) "SourceDBClusterIdentifier"
                              Prelude.<$> sourceDBClusterIdentifier,
                            (JSON..=) "StorageEncrypted" Prelude.<$> storageEncrypted,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON GlobalCluster where
  toJSON GlobalCluster {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DeletionProtection" Prelude.<$> deletionProtection,
               (JSON..=) "Engine" Prelude.<$> engine,
               (JSON..=) "EngineLifecycleSupport"
                 Prelude.<$> engineLifecycleSupport,
               (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
               (JSON..=) "GlobalClusterIdentifier"
                 Prelude.<$> globalClusterIdentifier,
               (JSON..=) "GlobalEndpoint" Prelude.<$> globalEndpoint,
               (JSON..=) "SourceDBClusterIdentifier"
                 Prelude.<$> sourceDBClusterIdentifier,
               (JSON..=) "StorageEncrypted" Prelude.<$> storageEncrypted,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "DeletionProtection" GlobalCluster where
  type PropertyType "DeletionProtection" GlobalCluster = Value Prelude.Bool
  set newValue GlobalCluster {..}
    = GlobalCluster {deletionProtection = Prelude.pure newValue, ..}
instance Property "Engine" GlobalCluster where
  type PropertyType "Engine" GlobalCluster = Value Prelude.Text
  set newValue GlobalCluster {..}
    = GlobalCluster {engine = Prelude.pure newValue, ..}
instance Property "EngineLifecycleSupport" GlobalCluster where
  type PropertyType "EngineLifecycleSupport" GlobalCluster = Value Prelude.Text
  set newValue GlobalCluster {..}
    = GlobalCluster
        {engineLifecycleSupport = Prelude.pure newValue, ..}
instance Property "EngineVersion" GlobalCluster where
  type PropertyType "EngineVersion" GlobalCluster = Value Prelude.Text
  set newValue GlobalCluster {..}
    = GlobalCluster {engineVersion = Prelude.pure newValue, ..}
instance Property "GlobalClusterIdentifier" GlobalCluster where
  type PropertyType "GlobalClusterIdentifier" GlobalCluster = Value Prelude.Text
  set newValue GlobalCluster {..}
    = GlobalCluster
        {globalClusterIdentifier = Prelude.pure newValue, ..}
instance Property "GlobalEndpoint" GlobalCluster where
  type PropertyType "GlobalEndpoint" GlobalCluster = GlobalEndpointProperty
  set newValue GlobalCluster {..}
    = GlobalCluster {globalEndpoint = Prelude.pure newValue, ..}
instance Property "SourceDBClusterIdentifier" GlobalCluster where
  type PropertyType "SourceDBClusterIdentifier" GlobalCluster = Value Prelude.Text
  set newValue GlobalCluster {..}
    = GlobalCluster
        {sourceDBClusterIdentifier = Prelude.pure newValue, ..}
instance Property "StorageEncrypted" GlobalCluster where
  type PropertyType "StorageEncrypted" GlobalCluster = Value Prelude.Bool
  set newValue GlobalCluster {..}
    = GlobalCluster {storageEncrypted = Prelude.pure newValue, ..}
instance Property "Tags" GlobalCluster where
  type PropertyType "Tags" GlobalCluster = [Tag]
  set newValue GlobalCluster {..}
    = GlobalCluster {tags = Prelude.pure newValue, ..}