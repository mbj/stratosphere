module Stratosphere.ARCRegionSwitch.Plan.LambdasProperty (
        LambdasProperty(..), mkLambdasProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdasProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-lambdas.html>
    LambdasProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-lambdas.html#cfn-arcregionswitch-plan-lambdas-arn>
                     arn :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-lambdas.html#cfn-arcregionswitch-plan-lambdas-crossaccountrole>
                     crossAccountRole :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-lambdas.html#cfn-arcregionswitch-plan-lambdas-externalid>
                     externalId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLambdasProperty :: LambdasProperty
mkLambdasProperty
  = LambdasProperty
      {haddock_workaround_ = (), arn = Prelude.Nothing,
       crossAccountRole = Prelude.Nothing, externalId = Prelude.Nothing}
instance ToResourceProperties LambdasProperty where
  toResourceProperties LambdasProperty {..}
    = ResourceProperties
        {awsType = "AWS::ARCRegionSwitch::Plan.Lambdas",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Arn" Prelude.<$> arn,
                            (JSON..=) "CrossAccountRole" Prelude.<$> crossAccountRole,
                            (JSON..=) "ExternalId" Prelude.<$> externalId])}
instance JSON.ToJSON LambdasProperty where
  toJSON LambdasProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Arn" Prelude.<$> arn,
               (JSON..=) "CrossAccountRole" Prelude.<$> crossAccountRole,
               (JSON..=) "ExternalId" Prelude.<$> externalId]))
instance Property "Arn" LambdasProperty where
  type PropertyType "Arn" LambdasProperty = Value Prelude.Text
  set newValue LambdasProperty {..}
    = LambdasProperty {arn = Prelude.pure newValue, ..}
instance Property "CrossAccountRole" LambdasProperty where
  type PropertyType "CrossAccountRole" LambdasProperty = Value Prelude.Text
  set newValue LambdasProperty {..}
    = LambdasProperty {crossAccountRole = Prelude.pure newValue, ..}
instance Property "ExternalId" LambdasProperty where
  type PropertyType "ExternalId" LambdasProperty = Value Prelude.Text
  set newValue LambdasProperty {..}
    = LambdasProperty {externalId = Prelude.pure newValue, ..}