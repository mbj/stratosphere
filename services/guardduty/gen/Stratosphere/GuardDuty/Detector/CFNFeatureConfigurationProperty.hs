module Stratosphere.GuardDuty.Detector.CFNFeatureConfigurationProperty (
        module Exports, CFNFeatureConfigurationProperty(..),
        mkCFNFeatureConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GuardDuty.Detector.CFNFeatureAdditionalConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CFNFeatureConfigurationProperty
  = CFNFeatureConfigurationProperty {additionalConfiguration :: (Prelude.Maybe [CFNFeatureAdditionalConfigurationProperty]),
                                     name :: (Value Prelude.Text),
                                     status :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCFNFeatureConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> CFNFeatureConfigurationProperty
mkCFNFeatureConfigurationProperty name status
  = CFNFeatureConfigurationProperty
      {name = name, status = status,
       additionalConfiguration = Prelude.Nothing}
instance ToResourceProperties CFNFeatureConfigurationProperty where
  toResourceProperties CFNFeatureConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GuardDuty::Detector.CFNFeatureConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Status" JSON..= status]
                           (Prelude.catMaybes
                              [(JSON..=) "AdditionalConfiguration"
                                 Prelude.<$> additionalConfiguration]))}
instance JSON.ToJSON CFNFeatureConfigurationProperty where
  toJSON CFNFeatureConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Status" JSON..= status]
              (Prelude.catMaybes
                 [(JSON..=) "AdditionalConfiguration"
                    Prelude.<$> additionalConfiguration])))
instance Property "AdditionalConfiguration" CFNFeatureConfigurationProperty where
  type PropertyType "AdditionalConfiguration" CFNFeatureConfigurationProperty = [CFNFeatureAdditionalConfigurationProperty]
  set newValue CFNFeatureConfigurationProperty {..}
    = CFNFeatureConfigurationProperty
        {additionalConfiguration = Prelude.pure newValue, ..}
instance Property "Name" CFNFeatureConfigurationProperty where
  type PropertyType "Name" CFNFeatureConfigurationProperty = Value Prelude.Text
  set newValue CFNFeatureConfigurationProperty {..}
    = CFNFeatureConfigurationProperty {name = newValue, ..}
instance Property "Status" CFNFeatureConfigurationProperty where
  type PropertyType "Status" CFNFeatureConfigurationProperty = Value Prelude.Text
  set newValue CFNFeatureConfigurationProperty {..}
    = CFNFeatureConfigurationProperty {status = newValue, ..}