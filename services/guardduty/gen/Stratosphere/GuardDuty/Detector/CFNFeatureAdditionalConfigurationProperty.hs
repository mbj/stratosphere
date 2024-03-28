module Stratosphere.GuardDuty.Detector.CFNFeatureAdditionalConfigurationProperty (
        CFNFeatureAdditionalConfigurationProperty(..),
        mkCFNFeatureAdditionalConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CFNFeatureAdditionalConfigurationProperty
  = CFNFeatureAdditionalConfigurationProperty {name :: (Prelude.Maybe (Value Prelude.Text)),
                                               status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCFNFeatureAdditionalConfigurationProperty ::
  CFNFeatureAdditionalConfigurationProperty
mkCFNFeatureAdditionalConfigurationProperty
  = CFNFeatureAdditionalConfigurationProperty
      {name = Prelude.Nothing, status = Prelude.Nothing}
instance ToResourceProperties CFNFeatureAdditionalConfigurationProperty where
  toResourceProperties CFNFeatureAdditionalConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GuardDuty::Detector.CFNFeatureAdditionalConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Status" Prelude.<$> status])}
instance JSON.ToJSON CFNFeatureAdditionalConfigurationProperty where
  toJSON CFNFeatureAdditionalConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Status" Prelude.<$> status]))
instance Property "Name" CFNFeatureAdditionalConfigurationProperty where
  type PropertyType "Name" CFNFeatureAdditionalConfigurationProperty = Value Prelude.Text
  set newValue CFNFeatureAdditionalConfigurationProperty {..}
    = CFNFeatureAdditionalConfigurationProperty
        {name = Prelude.pure newValue, ..}
instance Property "Status" CFNFeatureAdditionalConfigurationProperty where
  type PropertyType "Status" CFNFeatureAdditionalConfigurationProperty = Value Prelude.Text
  set newValue CFNFeatureAdditionalConfigurationProperty {..}
    = CFNFeatureAdditionalConfigurationProperty
        {status = Prelude.pure newValue, ..}