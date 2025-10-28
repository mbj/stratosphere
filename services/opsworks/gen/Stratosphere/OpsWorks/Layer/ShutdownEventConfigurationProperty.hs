module Stratosphere.OpsWorks.Layer.ShutdownEventConfigurationProperty (
        ShutdownEventConfigurationProperty(..),
        mkShutdownEventConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ShutdownEventConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-lifecycleeventconfiguration-shutdowneventconfiguration.html>
    ShutdownEventConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-lifecycleeventconfiguration-shutdowneventconfiguration.html#cfn-opsworks-layer-lifecycleconfiguration-shutdowneventconfiguration-delayuntilelbconnectionsdrained>
                                        delayUntilElbConnectionsDrained :: (Prelude.Maybe (Value Prelude.Bool)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-lifecycleeventconfiguration-shutdowneventconfiguration.html#cfn-opsworks-layer-lifecycleconfiguration-shutdowneventconfiguration-executiontimeout>
                                        executionTimeout :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkShutdownEventConfigurationProperty ::
  ShutdownEventConfigurationProperty
mkShutdownEventConfigurationProperty
  = ShutdownEventConfigurationProperty
      {haddock_workaround_ = (),
       delayUntilElbConnectionsDrained = Prelude.Nothing,
       executionTimeout = Prelude.Nothing}
instance ToResourceProperties ShutdownEventConfigurationProperty where
  toResourceProperties ShutdownEventConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpsWorks::Layer.ShutdownEventConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DelayUntilElbConnectionsDrained"
                              Prelude.<$> delayUntilElbConnectionsDrained,
                            (JSON..=) "ExecutionTimeout" Prelude.<$> executionTimeout])}
instance JSON.ToJSON ShutdownEventConfigurationProperty where
  toJSON ShutdownEventConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DelayUntilElbConnectionsDrained"
                 Prelude.<$> delayUntilElbConnectionsDrained,
               (JSON..=) "ExecutionTimeout" Prelude.<$> executionTimeout]))
instance Property "DelayUntilElbConnectionsDrained" ShutdownEventConfigurationProperty where
  type PropertyType "DelayUntilElbConnectionsDrained" ShutdownEventConfigurationProperty = Value Prelude.Bool
  set newValue ShutdownEventConfigurationProperty {..}
    = ShutdownEventConfigurationProperty
        {delayUntilElbConnectionsDrained = Prelude.pure newValue, ..}
instance Property "ExecutionTimeout" ShutdownEventConfigurationProperty where
  type PropertyType "ExecutionTimeout" ShutdownEventConfigurationProperty = Value Prelude.Integer
  set newValue ShutdownEventConfigurationProperty {..}
    = ShutdownEventConfigurationProperty
        {executionTimeout = Prelude.pure newValue, ..}