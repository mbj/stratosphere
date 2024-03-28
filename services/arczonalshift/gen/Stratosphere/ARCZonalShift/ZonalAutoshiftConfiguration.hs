module Stratosphere.ARCZonalShift.ZonalAutoshiftConfiguration (
        module Exports, ZonalAutoshiftConfiguration(..),
        mkZonalAutoshiftConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ARCZonalShift.ZonalAutoshiftConfiguration.PracticeRunConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ZonalAutoshiftConfiguration
  = ZonalAutoshiftConfiguration {practiceRunConfiguration :: (Prelude.Maybe PracticeRunConfigurationProperty),
                                 resourceIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                                 zonalAutoshiftStatus :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkZonalAutoshiftConfiguration :: ZonalAutoshiftConfiguration
mkZonalAutoshiftConfiguration
  = ZonalAutoshiftConfiguration
      {practiceRunConfiguration = Prelude.Nothing,
       resourceIdentifier = Prelude.Nothing,
       zonalAutoshiftStatus = Prelude.Nothing}
instance ToResourceProperties ZonalAutoshiftConfiguration where
  toResourceProperties ZonalAutoshiftConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::ARCZonalShift::ZonalAutoshiftConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PracticeRunConfiguration"
                              Prelude.<$> practiceRunConfiguration,
                            (JSON..=) "ResourceIdentifier" Prelude.<$> resourceIdentifier,
                            (JSON..=) "ZonalAutoshiftStatus"
                              Prelude.<$> zonalAutoshiftStatus])}
instance JSON.ToJSON ZonalAutoshiftConfiguration where
  toJSON ZonalAutoshiftConfiguration {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PracticeRunConfiguration"
                 Prelude.<$> practiceRunConfiguration,
               (JSON..=) "ResourceIdentifier" Prelude.<$> resourceIdentifier,
               (JSON..=) "ZonalAutoshiftStatus"
                 Prelude.<$> zonalAutoshiftStatus]))
instance Property "PracticeRunConfiguration" ZonalAutoshiftConfiguration where
  type PropertyType "PracticeRunConfiguration" ZonalAutoshiftConfiguration = PracticeRunConfigurationProperty
  set newValue ZonalAutoshiftConfiguration {..}
    = ZonalAutoshiftConfiguration
        {practiceRunConfiguration = Prelude.pure newValue, ..}
instance Property "ResourceIdentifier" ZonalAutoshiftConfiguration where
  type PropertyType "ResourceIdentifier" ZonalAutoshiftConfiguration = Value Prelude.Text
  set newValue ZonalAutoshiftConfiguration {..}
    = ZonalAutoshiftConfiguration
        {resourceIdentifier = Prelude.pure newValue, ..}
instance Property "ZonalAutoshiftStatus" ZonalAutoshiftConfiguration where
  type PropertyType "ZonalAutoshiftStatus" ZonalAutoshiftConfiguration = Value Prelude.Text
  set newValue ZonalAutoshiftConfiguration {..}
    = ZonalAutoshiftConfiguration
        {zonalAutoshiftStatus = Prelude.pure newValue, ..}