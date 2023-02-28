module Stratosphere.GroundStation.Config.DemodulationConfigProperty (
        DemodulationConfigProperty(..), mkDemodulationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DemodulationConfigProperty
  = DemodulationConfigProperty {unvalidatedJSON :: (Prelude.Maybe (Value Prelude.Text))}
mkDemodulationConfigProperty :: DemodulationConfigProperty
mkDemodulationConfigProperty
  = DemodulationConfigProperty {unvalidatedJSON = Prelude.Nothing}
instance ToResourceProperties DemodulationConfigProperty where
  toResourceProperties DemodulationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::Config.DemodulationConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "UnvalidatedJSON" Prelude.<$> unvalidatedJSON])}
instance JSON.ToJSON DemodulationConfigProperty where
  toJSON DemodulationConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "UnvalidatedJSON" Prelude.<$> unvalidatedJSON]))
instance Property "UnvalidatedJSON" DemodulationConfigProperty where
  type PropertyType "UnvalidatedJSON" DemodulationConfigProperty = Value Prelude.Text
  set newValue DemodulationConfigProperty {}
    = DemodulationConfigProperty
        {unvalidatedJSON = Prelude.pure newValue, ..}