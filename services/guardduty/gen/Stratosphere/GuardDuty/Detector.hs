module Stratosphere.GuardDuty.Detector (
        module Exports, Detector(..), mkDetector
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GuardDuty.Detector.CFNDataSourceConfigurationsProperty as Exports
import {-# SOURCE #-} Stratosphere.GuardDuty.Detector.CFNFeatureConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.GuardDuty.Detector.TagItemProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Detector
  = Detector {dataSources :: (Prelude.Maybe CFNDataSourceConfigurationsProperty),
              enable :: (Value Prelude.Bool),
              features :: (Prelude.Maybe [CFNFeatureConfigurationProperty]),
              findingPublishingFrequency :: (Prelude.Maybe (Value Prelude.Text)),
              tags :: (Prelude.Maybe [TagItemProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDetector :: Value Prelude.Bool -> Detector
mkDetector enable
  = Detector
      {enable = enable, dataSources = Prelude.Nothing,
       features = Prelude.Nothing,
       findingPublishingFrequency = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Detector where
  toResourceProperties Detector {..}
    = ResourceProperties
        {awsType = "AWS::GuardDuty::Detector", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enable" JSON..= enable]
                           (Prelude.catMaybes
                              [(JSON..=) "DataSources" Prelude.<$> dataSources,
                               (JSON..=) "Features" Prelude.<$> features,
                               (JSON..=) "FindingPublishingFrequency"
                                 Prelude.<$> findingPublishingFrequency,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Detector where
  toJSON Detector {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enable" JSON..= enable]
              (Prelude.catMaybes
                 [(JSON..=) "DataSources" Prelude.<$> dataSources,
                  (JSON..=) "Features" Prelude.<$> features,
                  (JSON..=) "FindingPublishingFrequency"
                    Prelude.<$> findingPublishingFrequency,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DataSources" Detector where
  type PropertyType "DataSources" Detector = CFNDataSourceConfigurationsProperty
  set newValue Detector {..}
    = Detector {dataSources = Prelude.pure newValue, ..}
instance Property "Enable" Detector where
  type PropertyType "Enable" Detector = Value Prelude.Bool
  set newValue Detector {..} = Detector {enable = newValue, ..}
instance Property "Features" Detector where
  type PropertyType "Features" Detector = [CFNFeatureConfigurationProperty]
  set newValue Detector {..}
    = Detector {features = Prelude.pure newValue, ..}
instance Property "FindingPublishingFrequency" Detector where
  type PropertyType "FindingPublishingFrequency" Detector = Value Prelude.Text
  set newValue Detector {..}
    = Detector {findingPublishingFrequency = Prelude.pure newValue, ..}
instance Property "Tags" Detector where
  type PropertyType "Tags" Detector = [TagItemProperty]
  set newValue Detector {..}
    = Detector {tags = Prelude.pure newValue, ..}