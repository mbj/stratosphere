module Stratosphere.MemoryDB.MultiRegionCluster (
        MultiRegionCluster(..), mkMultiRegionCluster
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data MultiRegionCluster
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-multiregioncluster.html>
    MultiRegionCluster {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-multiregioncluster.html#cfn-memorydb-multiregioncluster-description>
                        description :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-multiregioncluster.html#cfn-memorydb-multiregioncluster-engine>
                        engine :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-multiregioncluster.html#cfn-memorydb-multiregioncluster-engineversion>
                        engineVersion :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-multiregioncluster.html#cfn-memorydb-multiregioncluster-multiregionclusternamesuffix>
                        multiRegionClusterNameSuffix :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-multiregioncluster.html#cfn-memorydb-multiregioncluster-multiregionparametergroupname>
                        multiRegionParameterGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-multiregioncluster.html#cfn-memorydb-multiregioncluster-nodetype>
                        nodeType :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-multiregioncluster.html#cfn-memorydb-multiregioncluster-numshards>
                        numShards :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-multiregioncluster.html#cfn-memorydb-multiregioncluster-tlsenabled>
                        tLSEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-multiregioncluster.html#cfn-memorydb-multiregioncluster-tags>
                        tags :: (Prelude.Maybe [Tag]),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-multiregioncluster.html#cfn-memorydb-multiregioncluster-updatestrategy>
                        updateStrategy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiRegionCluster :: Value Prelude.Text -> MultiRegionCluster
mkMultiRegionCluster nodeType
  = MultiRegionCluster
      {haddock_workaround_ = (), nodeType = nodeType,
       description = Prelude.Nothing, engine = Prelude.Nothing,
       engineVersion = Prelude.Nothing,
       multiRegionClusterNameSuffix = Prelude.Nothing,
       multiRegionParameterGroupName = Prelude.Nothing,
       numShards = Prelude.Nothing, tLSEnabled = Prelude.Nothing,
       tags = Prelude.Nothing, updateStrategy = Prelude.Nothing}
instance ToResourceProperties MultiRegionCluster where
  toResourceProperties MultiRegionCluster {..}
    = ResourceProperties
        {awsType = "AWS::MemoryDB::MultiRegionCluster",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["NodeType" JSON..= nodeType]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Engine" Prelude.<$> engine,
                               (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
                               (JSON..=) "MultiRegionClusterNameSuffix"
                                 Prelude.<$> multiRegionClusterNameSuffix,
                               (JSON..=) "MultiRegionParameterGroupName"
                                 Prelude.<$> multiRegionParameterGroupName,
                               (JSON..=) "NumShards" Prelude.<$> numShards,
                               (JSON..=) "TLSEnabled" Prelude.<$> tLSEnabled,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "UpdateStrategy" Prelude.<$> updateStrategy]))}
instance JSON.ToJSON MultiRegionCluster where
  toJSON MultiRegionCluster {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["NodeType" JSON..= nodeType]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Engine" Prelude.<$> engine,
                  (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
                  (JSON..=) "MultiRegionClusterNameSuffix"
                    Prelude.<$> multiRegionClusterNameSuffix,
                  (JSON..=) "MultiRegionParameterGroupName"
                    Prelude.<$> multiRegionParameterGroupName,
                  (JSON..=) "NumShards" Prelude.<$> numShards,
                  (JSON..=) "TLSEnabled" Prelude.<$> tLSEnabled,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "UpdateStrategy" Prelude.<$> updateStrategy])))
instance Property "Description" MultiRegionCluster where
  type PropertyType "Description" MultiRegionCluster = Value Prelude.Text
  set newValue MultiRegionCluster {..}
    = MultiRegionCluster {description = Prelude.pure newValue, ..}
instance Property "Engine" MultiRegionCluster where
  type PropertyType "Engine" MultiRegionCluster = Value Prelude.Text
  set newValue MultiRegionCluster {..}
    = MultiRegionCluster {engine = Prelude.pure newValue, ..}
instance Property "EngineVersion" MultiRegionCluster where
  type PropertyType "EngineVersion" MultiRegionCluster = Value Prelude.Text
  set newValue MultiRegionCluster {..}
    = MultiRegionCluster {engineVersion = Prelude.pure newValue, ..}
instance Property "MultiRegionClusterNameSuffix" MultiRegionCluster where
  type PropertyType "MultiRegionClusterNameSuffix" MultiRegionCluster = Value Prelude.Text
  set newValue MultiRegionCluster {..}
    = MultiRegionCluster
        {multiRegionClusterNameSuffix = Prelude.pure newValue, ..}
instance Property "MultiRegionParameterGroupName" MultiRegionCluster where
  type PropertyType "MultiRegionParameterGroupName" MultiRegionCluster = Value Prelude.Text
  set newValue MultiRegionCluster {..}
    = MultiRegionCluster
        {multiRegionParameterGroupName = Prelude.pure newValue, ..}
instance Property "NodeType" MultiRegionCluster where
  type PropertyType "NodeType" MultiRegionCluster = Value Prelude.Text
  set newValue MultiRegionCluster {..}
    = MultiRegionCluster {nodeType = newValue, ..}
instance Property "NumShards" MultiRegionCluster where
  type PropertyType "NumShards" MultiRegionCluster = Value Prelude.Integer
  set newValue MultiRegionCluster {..}
    = MultiRegionCluster {numShards = Prelude.pure newValue, ..}
instance Property "TLSEnabled" MultiRegionCluster where
  type PropertyType "TLSEnabled" MultiRegionCluster = Value Prelude.Bool
  set newValue MultiRegionCluster {..}
    = MultiRegionCluster {tLSEnabled = Prelude.pure newValue, ..}
instance Property "Tags" MultiRegionCluster where
  type PropertyType "Tags" MultiRegionCluster = [Tag]
  set newValue MultiRegionCluster {..}
    = MultiRegionCluster {tags = Prelude.pure newValue, ..}
instance Property "UpdateStrategy" MultiRegionCluster where
  type PropertyType "UpdateStrategy" MultiRegionCluster = Value Prelude.Text
  set newValue MultiRegionCluster {..}
    = MultiRegionCluster {updateStrategy = Prelude.pure newValue, ..}