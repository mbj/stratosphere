module Stratosphere.Deadline.Fleet.AcceleratorCapabilitiesProperty (
        module Exports, AcceleratorCapabilitiesProperty(..),
        mkAcceleratorCapabilitiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Deadline.Fleet.AcceleratorCountRangeProperty as Exports
import {-# SOURCE #-} Stratosphere.Deadline.Fleet.AcceleratorSelectionProperty as Exports
import Stratosphere.ResourceProperties
data AcceleratorCapabilitiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-acceleratorcapabilities.html>
    AcceleratorCapabilitiesProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-acceleratorcapabilities.html#cfn-deadline-fleet-acceleratorcapabilities-count>
                                     count :: (Prelude.Maybe AcceleratorCountRangeProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-acceleratorcapabilities.html#cfn-deadline-fleet-acceleratorcapabilities-selections>
                                     selections :: [AcceleratorSelectionProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAcceleratorCapabilitiesProperty ::
  [AcceleratorSelectionProperty] -> AcceleratorCapabilitiesProperty
mkAcceleratorCapabilitiesProperty selections
  = AcceleratorCapabilitiesProperty
      {haddock_workaround_ = (), selections = selections,
       count = Prelude.Nothing}
instance ToResourceProperties AcceleratorCapabilitiesProperty where
  toResourceProperties AcceleratorCapabilitiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::Fleet.AcceleratorCapabilities",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Selections" JSON..= selections]
                           (Prelude.catMaybes [(JSON..=) "Count" Prelude.<$> count]))}
instance JSON.ToJSON AcceleratorCapabilitiesProperty where
  toJSON AcceleratorCapabilitiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Selections" JSON..= selections]
              (Prelude.catMaybes [(JSON..=) "Count" Prelude.<$> count])))
instance Property "Count" AcceleratorCapabilitiesProperty where
  type PropertyType "Count" AcceleratorCapabilitiesProperty = AcceleratorCountRangeProperty
  set newValue AcceleratorCapabilitiesProperty {..}
    = AcceleratorCapabilitiesProperty
        {count = Prelude.pure newValue, ..}
instance Property "Selections" AcceleratorCapabilitiesProperty where
  type PropertyType "Selections" AcceleratorCapabilitiesProperty = [AcceleratorSelectionProperty]
  set newValue AcceleratorCapabilitiesProperty {..}
    = AcceleratorCapabilitiesProperty {selections = newValue, ..}