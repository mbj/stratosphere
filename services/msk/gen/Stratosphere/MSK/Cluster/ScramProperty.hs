module Stratosphere.MSK.Cluster.ScramProperty (
        ScramProperty(..), mkScramProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScramProperty
  = ScramProperty {enabled :: (Value Prelude.Bool)}
mkScramProperty :: Value Prelude.Bool -> ScramProperty
mkScramProperty enabled = ScramProperty {enabled = enabled}
instance ToResourceProperties ScramProperty where
  toResourceProperties ScramProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.Scram", supportsTags = Prelude.False,
         properties = ["Enabled" JSON..= enabled]}
instance JSON.ToJSON ScramProperty where
  toJSON ScramProperty {..} = JSON.object ["Enabled" JSON..= enabled]
instance Property "Enabled" ScramProperty where
  type PropertyType "Enabled" ScramProperty = Value Prelude.Bool
  set newValue ScramProperty {}
    = ScramProperty {enabled = newValue, ..}