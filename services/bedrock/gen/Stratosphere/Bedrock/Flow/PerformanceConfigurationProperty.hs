module Stratosphere.Bedrock.Flow.PerformanceConfigurationProperty (
        PerformanceConfigurationProperty(..),
        mkPerformanceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PerformanceConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-performanceconfiguration.html>
    PerformanceConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-performanceconfiguration.html#cfn-bedrock-flow-performanceconfiguration-latency>
                                      latency :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPerformanceConfigurationProperty ::
  PerformanceConfigurationProperty
mkPerformanceConfigurationProperty
  = PerformanceConfigurationProperty
      {haddock_workaround_ = (), latency = Prelude.Nothing}
instance ToResourceProperties PerformanceConfigurationProperty where
  toResourceProperties PerformanceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow.PerformanceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Latency" Prelude.<$> latency])}
instance JSON.ToJSON PerformanceConfigurationProperty where
  toJSON PerformanceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Latency" Prelude.<$> latency]))
instance Property "Latency" PerformanceConfigurationProperty where
  type PropertyType "Latency" PerformanceConfigurationProperty = Value Prelude.Text
  set newValue PerformanceConfigurationProperty {..}
    = PerformanceConfigurationProperty
        {latency = Prelude.pure newValue, ..}