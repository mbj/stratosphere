module Stratosphere.MediaLive.Channel.NielsenNaesIiNwProperty (
        NielsenNaesIiNwProperty(..), mkNielsenNaesIiNwProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NielsenNaesIiNwProperty
  = NielsenNaesIiNwProperty {checkDigitString :: (Prelude.Maybe (Value Prelude.Text)),
                             sid :: (Prelude.Maybe (Value Prelude.Double))}
mkNielsenNaesIiNwProperty :: NielsenNaesIiNwProperty
mkNielsenNaesIiNwProperty
  = NielsenNaesIiNwProperty
      {checkDigitString = Prelude.Nothing, sid = Prelude.Nothing}
instance ToResourceProperties NielsenNaesIiNwProperty where
  toResourceProperties NielsenNaesIiNwProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.NielsenNaesIiNw",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CheckDigitString" Prelude.<$> checkDigitString,
                            (JSON..=) "Sid" Prelude.<$> sid])}
instance JSON.ToJSON NielsenNaesIiNwProperty where
  toJSON NielsenNaesIiNwProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CheckDigitString" Prelude.<$> checkDigitString,
               (JSON..=) "Sid" Prelude.<$> sid]))
instance Property "CheckDigitString" NielsenNaesIiNwProperty where
  type PropertyType "CheckDigitString" NielsenNaesIiNwProperty = Value Prelude.Text
  set newValue NielsenNaesIiNwProperty {..}
    = NielsenNaesIiNwProperty
        {checkDigitString = Prelude.pure newValue, ..}
instance Property "Sid" NielsenNaesIiNwProperty where
  type PropertyType "Sid" NielsenNaesIiNwProperty = Value Prelude.Double
  set newValue NielsenNaesIiNwProperty {..}
    = NielsenNaesIiNwProperty {sid = Prelude.pure newValue, ..}