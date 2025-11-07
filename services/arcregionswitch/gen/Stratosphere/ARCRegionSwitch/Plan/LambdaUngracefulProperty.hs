module Stratosphere.ARCRegionSwitch.Plan.LambdaUngracefulProperty (
        LambdaUngracefulProperty(..), mkLambdaUngracefulProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data LambdaUngracefulProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-lambdaungraceful.html>
    LambdaUngracefulProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-lambdaungraceful.html#cfn-arcregionswitch-plan-lambdaungraceful-behavior>
                              behavior :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLambdaUngracefulProperty :: LambdaUngracefulProperty
mkLambdaUngracefulProperty
  = LambdaUngracefulProperty
      {haddock_workaround_ = (), behavior = Prelude.Nothing}
instance ToResourceProperties LambdaUngracefulProperty where
  toResourceProperties LambdaUngracefulProperty {..}
    = ResourceProperties
        {awsType = "AWS::ARCRegionSwitch::Plan.LambdaUngraceful",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Behavior" Prelude.<$> behavior])}
instance JSON.ToJSON LambdaUngracefulProperty where
  toJSON LambdaUngracefulProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Behavior" Prelude.<$> behavior]))
instance Property "Behavior" LambdaUngracefulProperty where
  type PropertyType "Behavior" LambdaUngracefulProperty = JSON.Object
  set newValue LambdaUngracefulProperty {..}
    = LambdaUngracefulProperty {behavior = Prelude.pure newValue, ..}