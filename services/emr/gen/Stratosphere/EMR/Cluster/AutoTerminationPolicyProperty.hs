module Stratosphere.EMR.Cluster.AutoTerminationPolicyProperty (
        AutoTerminationPolicyProperty(..), mkAutoTerminationPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoTerminationPolicyProperty
  = AutoTerminationPolicyProperty {idleTimeout :: (Prelude.Maybe (Value Prelude.Integer))}
mkAutoTerminationPolicyProperty :: AutoTerminationPolicyProperty
mkAutoTerminationPolicyProperty
  = AutoTerminationPolicyProperty {idleTimeout = Prelude.Nothing}
instance ToResourceProperties AutoTerminationPolicyProperty where
  toResourceProperties AutoTerminationPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.AutoTerminationPolicy",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IdleTimeout" Prelude.<$> idleTimeout])}
instance JSON.ToJSON AutoTerminationPolicyProperty where
  toJSON AutoTerminationPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IdleTimeout" Prelude.<$> idleTimeout]))
instance Property "IdleTimeout" AutoTerminationPolicyProperty where
  type PropertyType "IdleTimeout" AutoTerminationPolicyProperty = Value Prelude.Integer
  set newValue AutoTerminationPolicyProperty {}
    = AutoTerminationPolicyProperty
        {idleTimeout = Prelude.pure newValue, ..}