module Stratosphere.ElastiCache.GlobalReplicationGroup (
        module Exports, GlobalReplicationGroup(..),
        mkGlobalReplicationGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElastiCache.GlobalReplicationGroup.GlobalReplicationGroupMemberProperty as Exports
import {-# SOURCE #-} Stratosphere.ElastiCache.GlobalReplicationGroup.RegionalConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GlobalReplicationGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-globalreplicationgroup.html>
    GlobalReplicationGroup {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-globalreplicationgroup.html#cfn-elasticache-globalreplicationgroup-automaticfailoverenabled>
                            automaticFailoverEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-globalreplicationgroup.html#cfn-elasticache-globalreplicationgroup-cachenodetype>
                            cacheNodeType :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-globalreplicationgroup.html#cfn-elasticache-globalreplicationgroup-cacheparametergroupname>
                            cacheParameterGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-globalreplicationgroup.html#cfn-elasticache-globalreplicationgroup-engine>
                            engine :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-globalreplicationgroup.html#cfn-elasticache-globalreplicationgroup-engineversion>
                            engineVersion :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-globalreplicationgroup.html#cfn-elasticache-globalreplicationgroup-globalnodegroupcount>
                            globalNodeGroupCount :: (Prelude.Maybe (Value Prelude.Integer)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-globalreplicationgroup.html#cfn-elasticache-globalreplicationgroup-globalreplicationgroupdescription>
                            globalReplicationGroupDescription :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-globalreplicationgroup.html#cfn-elasticache-globalreplicationgroup-globalreplicationgroupidsuffix>
                            globalReplicationGroupIdSuffix :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-globalreplicationgroup.html#cfn-elasticache-globalreplicationgroup-members>
                            members :: [GlobalReplicationGroupMemberProperty],
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-globalreplicationgroup.html#cfn-elasticache-globalreplicationgroup-regionalconfigurations>
                            regionalConfigurations :: (Prelude.Maybe [RegionalConfigurationProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGlobalReplicationGroup ::
  [GlobalReplicationGroupMemberProperty] -> GlobalReplicationGroup
mkGlobalReplicationGroup members
  = GlobalReplicationGroup
      {haddock_workaround_ = (), members = members,
       automaticFailoverEnabled = Prelude.Nothing,
       cacheNodeType = Prelude.Nothing,
       cacheParameterGroupName = Prelude.Nothing,
       engine = Prelude.Nothing, engineVersion = Prelude.Nothing,
       globalNodeGroupCount = Prelude.Nothing,
       globalReplicationGroupDescription = Prelude.Nothing,
       globalReplicationGroupIdSuffix = Prelude.Nothing,
       regionalConfigurations = Prelude.Nothing}
instance ToResourceProperties GlobalReplicationGroup where
  toResourceProperties GlobalReplicationGroup {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::GlobalReplicationGroup",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Members" JSON..= members]
                           (Prelude.catMaybes
                              [(JSON..=) "AutomaticFailoverEnabled"
                                 Prelude.<$> automaticFailoverEnabled,
                               (JSON..=) "CacheNodeType" Prelude.<$> cacheNodeType,
                               (JSON..=) "CacheParameterGroupName"
                                 Prelude.<$> cacheParameterGroupName,
                               (JSON..=) "Engine" Prelude.<$> engine,
                               (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
                               (JSON..=) "GlobalNodeGroupCount" Prelude.<$> globalNodeGroupCount,
                               (JSON..=) "GlobalReplicationGroupDescription"
                                 Prelude.<$> globalReplicationGroupDescription,
                               (JSON..=) "GlobalReplicationGroupIdSuffix"
                                 Prelude.<$> globalReplicationGroupIdSuffix,
                               (JSON..=) "RegionalConfigurations"
                                 Prelude.<$> regionalConfigurations]))}
instance JSON.ToJSON GlobalReplicationGroup where
  toJSON GlobalReplicationGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Members" JSON..= members]
              (Prelude.catMaybes
                 [(JSON..=) "AutomaticFailoverEnabled"
                    Prelude.<$> automaticFailoverEnabled,
                  (JSON..=) "CacheNodeType" Prelude.<$> cacheNodeType,
                  (JSON..=) "CacheParameterGroupName"
                    Prelude.<$> cacheParameterGroupName,
                  (JSON..=) "Engine" Prelude.<$> engine,
                  (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
                  (JSON..=) "GlobalNodeGroupCount" Prelude.<$> globalNodeGroupCount,
                  (JSON..=) "GlobalReplicationGroupDescription"
                    Prelude.<$> globalReplicationGroupDescription,
                  (JSON..=) "GlobalReplicationGroupIdSuffix"
                    Prelude.<$> globalReplicationGroupIdSuffix,
                  (JSON..=) "RegionalConfigurations"
                    Prelude.<$> regionalConfigurations])))
instance Property "AutomaticFailoverEnabled" GlobalReplicationGroup where
  type PropertyType "AutomaticFailoverEnabled" GlobalReplicationGroup = Value Prelude.Bool
  set newValue GlobalReplicationGroup {..}
    = GlobalReplicationGroup
        {automaticFailoverEnabled = Prelude.pure newValue, ..}
instance Property "CacheNodeType" GlobalReplicationGroup where
  type PropertyType "CacheNodeType" GlobalReplicationGroup = Value Prelude.Text
  set newValue GlobalReplicationGroup {..}
    = GlobalReplicationGroup
        {cacheNodeType = Prelude.pure newValue, ..}
instance Property "CacheParameterGroupName" GlobalReplicationGroup where
  type PropertyType "CacheParameterGroupName" GlobalReplicationGroup = Value Prelude.Text
  set newValue GlobalReplicationGroup {..}
    = GlobalReplicationGroup
        {cacheParameterGroupName = Prelude.pure newValue, ..}
instance Property "Engine" GlobalReplicationGroup where
  type PropertyType "Engine" GlobalReplicationGroup = Value Prelude.Text
  set newValue GlobalReplicationGroup {..}
    = GlobalReplicationGroup {engine = Prelude.pure newValue, ..}
instance Property "EngineVersion" GlobalReplicationGroup where
  type PropertyType "EngineVersion" GlobalReplicationGroup = Value Prelude.Text
  set newValue GlobalReplicationGroup {..}
    = GlobalReplicationGroup
        {engineVersion = Prelude.pure newValue, ..}
instance Property "GlobalNodeGroupCount" GlobalReplicationGroup where
  type PropertyType "GlobalNodeGroupCount" GlobalReplicationGroup = Value Prelude.Integer
  set newValue GlobalReplicationGroup {..}
    = GlobalReplicationGroup
        {globalNodeGroupCount = Prelude.pure newValue, ..}
instance Property "GlobalReplicationGroupDescription" GlobalReplicationGroup where
  type PropertyType "GlobalReplicationGroupDescription" GlobalReplicationGroup = Value Prelude.Text
  set newValue GlobalReplicationGroup {..}
    = GlobalReplicationGroup
        {globalReplicationGroupDescription = Prelude.pure newValue, ..}
instance Property "GlobalReplicationGroupIdSuffix" GlobalReplicationGroup where
  type PropertyType "GlobalReplicationGroupIdSuffix" GlobalReplicationGroup = Value Prelude.Text
  set newValue GlobalReplicationGroup {..}
    = GlobalReplicationGroup
        {globalReplicationGroupIdSuffix = Prelude.pure newValue, ..}
instance Property "Members" GlobalReplicationGroup where
  type PropertyType "Members" GlobalReplicationGroup = [GlobalReplicationGroupMemberProperty]
  set newValue GlobalReplicationGroup {..}
    = GlobalReplicationGroup {members = newValue, ..}
instance Property "RegionalConfigurations" GlobalReplicationGroup where
  type PropertyType "RegionalConfigurations" GlobalReplicationGroup = [RegionalConfigurationProperty]
  set newValue GlobalReplicationGroup {..}
    = GlobalReplicationGroup
        {regionalConfigurations = Prelude.pure newValue, ..}