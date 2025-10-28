module Stratosphere.IoTAnalytics.Dataset.LateDataRuleConfigurationProperty (
        module Exports, LateDataRuleConfigurationProperty(..),
        mkLateDataRuleConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Dataset.DeltaTimeSessionWindowConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data LateDataRuleConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-latedataruleconfiguration.html>
    LateDataRuleConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-latedataruleconfiguration.html#cfn-iotanalytics-dataset-latedataruleconfiguration-deltatimesessionwindowconfiguration>
                                       deltaTimeSessionWindowConfiguration :: (Prelude.Maybe DeltaTimeSessionWindowConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLateDataRuleConfigurationProperty ::
  LateDataRuleConfigurationProperty
mkLateDataRuleConfigurationProperty
  = LateDataRuleConfigurationProperty
      {haddock_workaround_ = (),
       deltaTimeSessionWindowConfiguration = Prelude.Nothing}
instance ToResourceProperties LateDataRuleConfigurationProperty where
  toResourceProperties LateDataRuleConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Dataset.LateDataRuleConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DeltaTimeSessionWindowConfiguration"
                              Prelude.<$> deltaTimeSessionWindowConfiguration])}
instance JSON.ToJSON LateDataRuleConfigurationProperty where
  toJSON LateDataRuleConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DeltaTimeSessionWindowConfiguration"
                 Prelude.<$> deltaTimeSessionWindowConfiguration]))
instance Property "DeltaTimeSessionWindowConfiguration" LateDataRuleConfigurationProperty where
  type PropertyType "DeltaTimeSessionWindowConfiguration" LateDataRuleConfigurationProperty = DeltaTimeSessionWindowConfigurationProperty
  set newValue LateDataRuleConfigurationProperty {..}
    = LateDataRuleConfigurationProperty
        {deltaTimeSessionWindowConfiguration = Prelude.pure newValue, ..}