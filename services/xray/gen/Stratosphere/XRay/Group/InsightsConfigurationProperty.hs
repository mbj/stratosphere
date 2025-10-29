module Stratosphere.XRay.Group.InsightsConfigurationProperty (
        InsightsConfigurationProperty(..), mkInsightsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InsightsConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-xray-group-insightsconfiguration.html>
    InsightsConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-xray-group-insightsconfiguration.html#cfn-xray-group-insightsconfiguration-insightsenabled>
                                   insightsEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-xray-group-insightsconfiguration.html#cfn-xray-group-insightsconfiguration-notificationsenabled>
                                   notificationsEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInsightsConfigurationProperty :: InsightsConfigurationProperty
mkInsightsConfigurationProperty
  = InsightsConfigurationProperty
      {insightsEnabled = Prelude.Nothing,
       notificationsEnabled = Prelude.Nothing}
instance ToResourceProperties InsightsConfigurationProperty where
  toResourceProperties InsightsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::XRay::Group.InsightsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InsightsEnabled" Prelude.<$> insightsEnabled,
                            (JSON..=) "NotificationsEnabled"
                              Prelude.<$> notificationsEnabled])}
instance JSON.ToJSON InsightsConfigurationProperty where
  toJSON InsightsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InsightsEnabled" Prelude.<$> insightsEnabled,
               (JSON..=) "NotificationsEnabled"
                 Prelude.<$> notificationsEnabled]))
instance Property "InsightsEnabled" InsightsConfigurationProperty where
  type PropertyType "InsightsEnabled" InsightsConfigurationProperty = Value Prelude.Bool
  set newValue InsightsConfigurationProperty {..}
    = InsightsConfigurationProperty
        {insightsEnabled = Prelude.pure newValue, ..}
instance Property "NotificationsEnabled" InsightsConfigurationProperty where
  type PropertyType "NotificationsEnabled" InsightsConfigurationProperty = Value Prelude.Bool
  set newValue InsightsConfigurationProperty {..}
    = InsightsConfigurationProperty
        {notificationsEnabled = Prelude.pure newValue, ..}