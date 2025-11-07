module Stratosphere.QuickSight.Dashboard.ArcAxisConfigurationProperty (
        module Exports, ArcAxisConfigurationProperty(..),
        mkArcAxisConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ArcAxisDisplayRangeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ArcAxisConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-arcaxisconfiguration.html>
    ArcAxisConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-arcaxisconfiguration.html#cfn-quicksight-dashboard-arcaxisconfiguration-range>
                                  range :: (Prelude.Maybe ArcAxisDisplayRangeProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-arcaxisconfiguration.html#cfn-quicksight-dashboard-arcaxisconfiguration-reserverange>
                                  reserveRange :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkArcAxisConfigurationProperty :: ArcAxisConfigurationProperty
mkArcAxisConfigurationProperty
  = ArcAxisConfigurationProperty
      {haddock_workaround_ = (), range = Prelude.Nothing,
       reserveRange = Prelude.Nothing}
instance ToResourceProperties ArcAxisConfigurationProperty where
  toResourceProperties ArcAxisConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ArcAxisConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Range" Prelude.<$> range,
                            (JSON..=) "ReserveRange" Prelude.<$> reserveRange])}
instance JSON.ToJSON ArcAxisConfigurationProperty where
  toJSON ArcAxisConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Range" Prelude.<$> range,
               (JSON..=) "ReserveRange" Prelude.<$> reserveRange]))
instance Property "Range" ArcAxisConfigurationProperty where
  type PropertyType "Range" ArcAxisConfigurationProperty = ArcAxisDisplayRangeProperty
  set newValue ArcAxisConfigurationProperty {..}
    = ArcAxisConfigurationProperty {range = Prelude.pure newValue, ..}
instance Property "ReserveRange" ArcAxisConfigurationProperty where
  type PropertyType "ReserveRange" ArcAxisConfigurationProperty = Value Prelude.Double
  set newValue ArcAxisConfigurationProperty {..}
    = ArcAxisConfigurationProperty
        {reserveRange = Prelude.pure newValue, ..}