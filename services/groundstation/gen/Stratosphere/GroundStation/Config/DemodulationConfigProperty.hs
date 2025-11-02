module Stratosphere.GroundStation.Config.DemodulationConfigProperty (
        DemodulationConfigProperty(..), mkDemodulationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DemodulationConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-demodulationconfig.html>
    DemodulationConfigProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-demodulationconfig.html#cfn-groundstation-config-demodulationconfig-unvalidatedjson>
                                unvalidatedJSON :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDemodulationConfigProperty :: DemodulationConfigProperty
mkDemodulationConfigProperty
  = DemodulationConfigProperty
      {haddock_workaround_ = (), unvalidatedJSON = Prelude.Nothing}
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
  set newValue DemodulationConfigProperty {..}
    = DemodulationConfigProperty
        {unvalidatedJSON = Prelude.pure newValue, ..}