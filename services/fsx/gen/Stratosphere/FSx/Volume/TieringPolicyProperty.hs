module Stratosphere.FSx.Volume.TieringPolicyProperty (
        TieringPolicyProperty(..), mkTieringPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TieringPolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-ontapconfiguration-tieringpolicy.html>
    TieringPolicyProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-ontapconfiguration-tieringpolicy.html#cfn-fsx-volume-ontapconfiguration-tieringpolicy-coolingperiod>
                           coolingPeriod :: (Prelude.Maybe (Value Prelude.Integer)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-ontapconfiguration-tieringpolicy.html#cfn-fsx-volume-ontapconfiguration-tieringpolicy-name>
                           name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTieringPolicyProperty :: TieringPolicyProperty
mkTieringPolicyProperty
  = TieringPolicyProperty
      {haddock_workaround_ = (), coolingPeriod = Prelude.Nothing,
       name = Prelude.Nothing}
instance ToResourceProperties TieringPolicyProperty where
  toResourceProperties TieringPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::Volume.TieringPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CoolingPeriod" Prelude.<$> coolingPeriod,
                            (JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON TieringPolicyProperty where
  toJSON TieringPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CoolingPeriod" Prelude.<$> coolingPeriod,
               (JSON..=) "Name" Prelude.<$> name]))
instance Property "CoolingPeriod" TieringPolicyProperty where
  type PropertyType "CoolingPeriod" TieringPolicyProperty = Value Prelude.Integer
  set newValue TieringPolicyProperty {..}
    = TieringPolicyProperty {coolingPeriod = Prelude.pure newValue, ..}
instance Property "Name" TieringPolicyProperty where
  type PropertyType "Name" TieringPolicyProperty = Value Prelude.Text
  set newValue TieringPolicyProperty {..}
    = TieringPolicyProperty {name = Prelude.pure newValue, ..}