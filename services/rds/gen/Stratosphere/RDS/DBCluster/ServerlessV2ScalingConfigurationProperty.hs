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
  = ServerlessV2ScalingConfigurationProperty {maxCapacity :: (Prelude.Maybe (Value Prelude.Double)),
                                              minCapacity :: (Prelude.Maybe (Value Prelude.Double))}
mkServerlessV2ScalingConfigurationProperty ::
  ServerlessV2ScalingConfigurationProperty
mkServerlessV2ScalingConfigurationProperty
  = ServerlessV2ScalingConfigurationProperty
      {maxCapacity = Prelude.Nothing, minCapacity = Prelude.Nothing}
instance ToResourceProperties ServerlessV2ScalingConfigurationProperty where
  toResourceProperties ServerlessV2ScalingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::RDS::DBCluster.ServerlessV2ScalingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxCapacity" Prelude.<$> maxCapacity,
                            (JSON..=) "MinCapacity" Prelude.<$> minCapacity])}
instance JSON.ToJSON ServerlessV2ScalingConfigurationProperty where
  toJSON ServerlessV2ScalingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxCapacity" Prelude.<$> maxCapacity,
               (JSON..=) "MinCapacity" Prelude.<$> minCapacity]))
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