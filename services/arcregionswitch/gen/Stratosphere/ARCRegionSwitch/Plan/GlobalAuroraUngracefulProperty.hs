module Stratosphere.ARCRegionSwitch.Plan.GlobalAuroraUngracefulProperty (
        GlobalAuroraUngracefulProperty(..),
        mkGlobalAuroraUngracefulProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GlobalAuroraUngracefulProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-globalauroraungraceful.html>
    GlobalAuroraUngracefulProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-globalauroraungraceful.html#cfn-arcregionswitch-plan-globalauroraungraceful-ungraceful>
                                    ungraceful :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGlobalAuroraUngracefulProperty :: GlobalAuroraUngracefulProperty
mkGlobalAuroraUngracefulProperty
  = GlobalAuroraUngracefulProperty
      {haddock_workaround_ = (), ungraceful = Prelude.Nothing}
instance ToResourceProperties GlobalAuroraUngracefulProperty where
  toResourceProperties GlobalAuroraUngracefulProperty {..}
    = ResourceProperties
        {awsType = "AWS::ARCRegionSwitch::Plan.GlobalAuroraUngraceful",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Ungraceful" Prelude.<$> ungraceful])}
instance JSON.ToJSON GlobalAuroraUngracefulProperty where
  toJSON GlobalAuroraUngracefulProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Ungraceful" Prelude.<$> ungraceful]))
instance Property "Ungraceful" GlobalAuroraUngracefulProperty where
  type PropertyType "Ungraceful" GlobalAuroraUngracefulProperty = Value Prelude.Text
  set newValue GlobalAuroraUngracefulProperty {..}
    = GlobalAuroraUngracefulProperty
        {ungraceful = Prelude.pure newValue, ..}