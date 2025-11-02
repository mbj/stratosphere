module Stratosphere.DocDB.DBCluster.ServerlessV2ScalingConfigurationProperty (
        ServerlessV2ScalingConfigurationProperty(..),
        mkServerlessV2ScalingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServerlessV2ScalingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-docdb-dbcluster-serverlessv2scalingconfiguration.html>
    ServerlessV2ScalingConfigurationProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-docdb-dbcluster-serverlessv2scalingconfiguration.html#cfn-docdb-dbcluster-serverlessv2scalingconfiguration-maxcapacity>
                                              maxCapacity :: (Value Prelude.Double),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-docdb-dbcluster-serverlessv2scalingconfiguration.html#cfn-docdb-dbcluster-serverlessv2scalingconfiguration-mincapacity>
                                              minCapacity :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServerlessV2ScalingConfigurationProperty ::
  Value Prelude.Double
  -> Value Prelude.Double -> ServerlessV2ScalingConfigurationProperty
mkServerlessV2ScalingConfigurationProperty maxCapacity minCapacity
  = ServerlessV2ScalingConfigurationProperty
      {haddock_workaround_ = (), maxCapacity = maxCapacity,
       minCapacity = minCapacity}
instance ToResourceProperties ServerlessV2ScalingConfigurationProperty where
  toResourceProperties ServerlessV2ScalingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DocDB::DBCluster.ServerlessV2ScalingConfiguration",
         supportsTags = Prelude.False,
         properties = ["MaxCapacity" JSON..= maxCapacity,
                       "MinCapacity" JSON..= minCapacity]}
instance JSON.ToJSON ServerlessV2ScalingConfigurationProperty where
  toJSON ServerlessV2ScalingConfigurationProperty {..}
    = JSON.object
        ["MaxCapacity" JSON..= maxCapacity,
         "MinCapacity" JSON..= minCapacity]
instance Property "MaxCapacity" ServerlessV2ScalingConfigurationProperty where
  type PropertyType "MaxCapacity" ServerlessV2ScalingConfigurationProperty = Value Prelude.Double
  set newValue ServerlessV2ScalingConfigurationProperty {..}
    = ServerlessV2ScalingConfigurationProperty
        {maxCapacity = newValue, ..}
instance Property "MinCapacity" ServerlessV2ScalingConfigurationProperty where
  type PropertyType "MinCapacity" ServerlessV2ScalingConfigurationProperty = Value Prelude.Double
  set newValue ServerlessV2ScalingConfigurationProperty {..}
    = ServerlessV2ScalingConfigurationProperty
        {minCapacity = newValue, ..}