module Stratosphere.Neptune.DBCluster.ServerlessScalingConfigurationProperty (
        ServerlessScalingConfigurationProperty(..),
        mkServerlessScalingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServerlessScalingConfigurationProperty
  = ServerlessScalingConfigurationProperty {maxCapacity :: (Value Prelude.Double),
                                            minCapacity :: (Value Prelude.Double)}
mkServerlessScalingConfigurationProperty ::
  Value Prelude.Double
  -> Value Prelude.Double -> ServerlessScalingConfigurationProperty
mkServerlessScalingConfigurationProperty maxCapacity minCapacity
  = ServerlessScalingConfigurationProperty
      {maxCapacity = maxCapacity, minCapacity = minCapacity}
instance ToResourceProperties ServerlessScalingConfigurationProperty where
  toResourceProperties ServerlessScalingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Neptune::DBCluster.ServerlessScalingConfiguration",
         supportsTags = Prelude.False,
         properties = ["MaxCapacity" JSON..= maxCapacity,
                       "MinCapacity" JSON..= minCapacity]}
instance JSON.ToJSON ServerlessScalingConfigurationProperty where
  toJSON ServerlessScalingConfigurationProperty {..}
    = JSON.object
        ["MaxCapacity" JSON..= maxCapacity,
         "MinCapacity" JSON..= minCapacity]
instance Property "MaxCapacity" ServerlessScalingConfigurationProperty where
  type PropertyType "MaxCapacity" ServerlessScalingConfigurationProperty = Value Prelude.Double
  set newValue ServerlessScalingConfigurationProperty {..}
    = ServerlessScalingConfigurationProperty
        {maxCapacity = newValue, ..}
instance Property "MinCapacity" ServerlessScalingConfigurationProperty where
  type PropertyType "MinCapacity" ServerlessScalingConfigurationProperty = Value Prelude.Double
  set newValue ServerlessScalingConfigurationProperty {..}
    = ServerlessScalingConfigurationProperty
        {minCapacity = newValue, ..}