module Stratosphere.GuardDuty.Detector.FeatureAdditionalConfigurationProperty (
        FeatureAdditionalConfigurationProperty(..),
        mkFeatureAdditionalConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FeatureAdditionalConfigurationProperty
  = FeatureAdditionalConfigurationProperty {name :: (Prelude.Maybe (Value Prelude.Text)),
                                            status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFeatureAdditionalConfigurationProperty ::
  FeatureAdditionalConfigurationProperty
mkFeatureAdditionalConfigurationProperty
  = FeatureAdditionalConfigurationProperty
      {name = Prelude.Nothing, status = Prelude.Nothing}
instance ToResourceProperties FeatureAdditionalConfigurationProperty where
  toResourceProperties FeatureAdditionalConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GuardDuty::Detector.FeatureAdditionalConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Status" Prelude.<$> status])}
instance JSON.ToJSON FeatureAdditionalConfigurationProperty where
  toJSON FeatureAdditionalConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Status" Prelude.<$> status]))
instance Property "Name" FeatureAdditionalConfigurationProperty where
  type PropertyType "Name" FeatureAdditionalConfigurationProperty = Value Prelude.Text
  set newValue FeatureAdditionalConfigurationProperty {..}
    = FeatureAdditionalConfigurationProperty
        {name = Prelude.pure newValue, ..}
instance Property "Status" FeatureAdditionalConfigurationProperty where
  type PropertyType "Status" FeatureAdditionalConfigurationProperty = Value Prelude.Text
  set newValue FeatureAdditionalConfigurationProperty {..}
    = FeatureAdditionalConfigurationProperty
        {status = Prelude.pure newValue, ..}