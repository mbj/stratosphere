module Stratosphere.LookoutMetrics.Alert.ActionProperty (
        module Exports, ActionProperty(..), mkActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LookoutMetrics.Alert.LambdaConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.LookoutMetrics.Alert.SNSConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data ActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-alert-action.html>
    ActionProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-alert-action.html#cfn-lookoutmetrics-alert-action-lambdaconfiguration>
                    lambdaConfiguration :: (Prelude.Maybe LambdaConfigurationProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-alert-action.html#cfn-lookoutmetrics-alert-action-snsconfiguration>
                    sNSConfiguration :: (Prelude.Maybe SNSConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActionProperty :: ActionProperty
mkActionProperty
  = ActionProperty
      {haddock_workaround_ = (), lambdaConfiguration = Prelude.Nothing,
       sNSConfiguration = Prelude.Nothing}
instance ToResourceProperties ActionProperty where
  toResourceProperties ActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::LookoutMetrics::Alert.Action",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LambdaConfiguration" Prelude.<$> lambdaConfiguration,
                            (JSON..=) "SNSConfiguration" Prelude.<$> sNSConfiguration])}
instance JSON.ToJSON ActionProperty where
  toJSON ActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LambdaConfiguration" Prelude.<$> lambdaConfiguration,
               (JSON..=) "SNSConfiguration" Prelude.<$> sNSConfiguration]))
instance Property "LambdaConfiguration" ActionProperty where
  type PropertyType "LambdaConfiguration" ActionProperty = LambdaConfigurationProperty
  set newValue ActionProperty {..}
    = ActionProperty {lambdaConfiguration = Prelude.pure newValue, ..}
instance Property "SNSConfiguration" ActionProperty where
  type PropertyType "SNSConfiguration" ActionProperty = SNSConfigurationProperty
  set newValue ActionProperty {..}
    = ActionProperty {sNSConfiguration = Prelude.pure newValue, ..}