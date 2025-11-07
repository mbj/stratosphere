module Stratosphere.RDS.DBCluster.ServerlessV2ScalingConfigurationProperty (
        ServerlessV2ScalingConfigurationProperty(..),
        mkServerlessV2ScalingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServerlessV2ScalingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-serverlessv2scalingconfiguration.html>
    ServerlessV2ScalingConfigurationProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-serverlessv2scalingconfiguration.html#cfn-rds-dbcluster-serverlessv2scalingconfiguration-maxcapacity>
                                              maxCapacity :: (Prelude.Maybe (Value Prelude.Double)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-serverlessv2scalingconfiguration.html#cfn-rds-dbcluster-serverlessv2scalingconfiguration-mincapacity>
                                              minCapacity :: (Prelude.Maybe (Value Prelude.Double)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-serverlessv2scalingconfiguration.html#cfn-rds-dbcluster-serverlessv2scalingconfiguration-secondsuntilautopause>
                                              secondsUntilAutoPause :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServerlessV2ScalingConfigurationProperty ::
  ServerlessV2ScalingConfigurationProperty
mkServerlessV2ScalingConfigurationProperty
  = ServerlessV2ScalingConfigurationProperty
      {haddock_workaround_ = (), maxCapacity = Prelude.Nothing,
       minCapacity = Prelude.Nothing,
       secondsUntilAutoPause = Prelude.Nothing}
instance ToResourceProperties ServerlessV2ScalingConfigurationProperty where
  toResourceProperties ServerlessV2ScalingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::RDS::DBCluster.ServerlessV2ScalingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxCapacity" Prelude.<$> maxCapacity,
                            (JSON..=) "MinCapacity" Prelude.<$> minCapacity,
                            (JSON..=) "SecondsUntilAutoPause"
                              Prelude.<$> secondsUntilAutoPause])}
instance JSON.ToJSON ServerlessV2ScalingConfigurationProperty where
  toJSON ServerlessV2ScalingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxCapacity" Prelude.<$> maxCapacity,
               (JSON..=) "MinCapacity" Prelude.<$> minCapacity,
               (JSON..=) "SecondsUntilAutoPause"
                 Prelude.<$> secondsUntilAutoPause]))
instance Property "MaxCapacity" ServerlessV2ScalingConfigurationProperty where
  type PropertyType "MaxCapacity" ServerlessV2ScalingConfigurationProperty = Value Prelude.Double
  set newValue ServerlessV2ScalingConfigurationProperty {..}
    = ServerlessV2ScalingConfigurationProperty
        {maxCapacity = Prelude.pure newValue, ..}
instance Property "MinCapacity" ServerlessV2ScalingConfigurationProperty where
  type PropertyType "MinCapacity" ServerlessV2ScalingConfigurationProperty = Value Prelude.Double
  set newValue ServerlessV2ScalingConfigurationProperty {..}
    = ServerlessV2ScalingConfigurationProperty
        {minCapacity = Prelude.pure newValue, ..}
instance Property "SecondsUntilAutoPause" ServerlessV2ScalingConfigurationProperty where
  type PropertyType "SecondsUntilAutoPause" ServerlessV2ScalingConfigurationProperty = Value Prelude.Integer
  set newValue ServerlessV2ScalingConfigurationProperty {..}
    = ServerlessV2ScalingConfigurationProperty
        {secondsUntilAutoPause = Prelude.pure newValue, ..}