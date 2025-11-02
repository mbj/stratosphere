module Stratosphere.Lambda.EventInvokeConfig (
        module Exports, EventInvokeConfig(..), mkEventInvokeConfig
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lambda.EventInvokeConfig.DestinationConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventInvokeConfig
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventinvokeconfig.html>
    EventInvokeConfig {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventinvokeconfig.html#cfn-lambda-eventinvokeconfig-destinationconfig>
                       destinationConfig :: (Prelude.Maybe DestinationConfigProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventinvokeconfig.html#cfn-lambda-eventinvokeconfig-functionname>
                       functionName :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventinvokeconfig.html#cfn-lambda-eventinvokeconfig-maximumeventageinseconds>
                       maximumEventAgeInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventinvokeconfig.html#cfn-lambda-eventinvokeconfig-maximumretryattempts>
                       maximumRetryAttempts :: (Prelude.Maybe (Value Prelude.Integer)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventinvokeconfig.html#cfn-lambda-eventinvokeconfig-qualifier>
                       qualifier :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventInvokeConfig ::
  Value Prelude.Text -> Value Prelude.Text -> EventInvokeConfig
mkEventInvokeConfig functionName qualifier
  = EventInvokeConfig
      {haddock_workaround_ = (), functionName = functionName,
       qualifier = qualifier, destinationConfig = Prelude.Nothing,
       maximumEventAgeInSeconds = Prelude.Nothing,
       maximumRetryAttempts = Prelude.Nothing}
instance ToResourceProperties EventInvokeConfig where
  toResourceProperties EventInvokeConfig {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::EventInvokeConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FunctionName" JSON..= functionName,
                            "Qualifier" JSON..= qualifier]
                           (Prelude.catMaybes
                              [(JSON..=) "DestinationConfig" Prelude.<$> destinationConfig,
                               (JSON..=) "MaximumEventAgeInSeconds"
                                 Prelude.<$> maximumEventAgeInSeconds,
                               (JSON..=) "MaximumRetryAttempts"
                                 Prelude.<$> maximumRetryAttempts]))}
instance JSON.ToJSON EventInvokeConfig where
  toJSON EventInvokeConfig {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FunctionName" JSON..= functionName,
               "Qualifier" JSON..= qualifier]
              (Prelude.catMaybes
                 [(JSON..=) "DestinationConfig" Prelude.<$> destinationConfig,
                  (JSON..=) "MaximumEventAgeInSeconds"
                    Prelude.<$> maximumEventAgeInSeconds,
                  (JSON..=) "MaximumRetryAttempts"
                    Prelude.<$> maximumRetryAttempts])))
instance Property "DestinationConfig" EventInvokeConfig where
  type PropertyType "DestinationConfig" EventInvokeConfig = DestinationConfigProperty
  set newValue EventInvokeConfig {..}
    = EventInvokeConfig {destinationConfig = Prelude.pure newValue, ..}
instance Property "FunctionName" EventInvokeConfig where
  type PropertyType "FunctionName" EventInvokeConfig = Value Prelude.Text
  set newValue EventInvokeConfig {..}
    = EventInvokeConfig {functionName = newValue, ..}
instance Property "MaximumEventAgeInSeconds" EventInvokeConfig where
  type PropertyType "MaximumEventAgeInSeconds" EventInvokeConfig = Value Prelude.Integer
  set newValue EventInvokeConfig {..}
    = EventInvokeConfig
        {maximumEventAgeInSeconds = Prelude.pure newValue, ..}
instance Property "MaximumRetryAttempts" EventInvokeConfig where
  type PropertyType "MaximumRetryAttempts" EventInvokeConfig = Value Prelude.Integer
  set newValue EventInvokeConfig {..}
    = EventInvokeConfig
        {maximumRetryAttempts = Prelude.pure newValue, ..}
instance Property "Qualifier" EventInvokeConfig where
  type PropertyType "Qualifier" EventInvokeConfig = Value Prelude.Text
  set newValue EventInvokeConfig {..}
    = EventInvokeConfig {qualifier = newValue, ..}