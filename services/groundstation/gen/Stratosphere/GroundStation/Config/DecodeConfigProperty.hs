module Stratosphere.GroundStation.Config.DecodeConfigProperty (
        DecodeConfigProperty(..), mkDecodeConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DecodeConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-decodeconfig.html>
    DecodeConfigProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-decodeconfig.html#cfn-groundstation-config-decodeconfig-unvalidatedjson>
                          unvalidatedJSON :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDecodeConfigProperty :: DecodeConfigProperty
mkDecodeConfigProperty
  = DecodeConfigProperty
      {haddock_workaround_ = (), unvalidatedJSON = Prelude.Nothing}
instance ToResourceProperties DecodeConfigProperty where
  toResourceProperties DecodeConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::Config.DecodeConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "UnvalidatedJSON" Prelude.<$> unvalidatedJSON])}
instance JSON.ToJSON DecodeConfigProperty where
  toJSON DecodeConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "UnvalidatedJSON" Prelude.<$> unvalidatedJSON]))
instance Property "UnvalidatedJSON" DecodeConfigProperty where
  type PropertyType "UnvalidatedJSON" DecodeConfigProperty = Value Prelude.Text
  set newValue DecodeConfigProperty {..}
    = DecodeConfigProperty
        {unvalidatedJSON = Prelude.pure newValue, ..}