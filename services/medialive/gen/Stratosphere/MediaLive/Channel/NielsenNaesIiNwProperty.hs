module Stratosphere.MediaLive.Channel.NielsenNaesIiNwProperty (
        NielsenNaesIiNwProperty(..), mkNielsenNaesIiNwProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NielsenNaesIiNwProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-nielsennaesiinw.html>
    NielsenNaesIiNwProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-nielsennaesiinw.html#cfn-medialive-channel-nielsennaesiinw-checkdigitstring>
                             checkDigitString :: (Prelude.Maybe (Value Prelude.Text)),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-nielsennaesiinw.html#cfn-medialive-channel-nielsennaesiinw-sid>
                             sid :: (Prelude.Maybe (Value Prelude.Double)),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-nielsennaesiinw.html#cfn-medialive-channel-nielsennaesiinw-timezone>
                             timezone :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNielsenNaesIiNwProperty :: NielsenNaesIiNwProperty
mkNielsenNaesIiNwProperty
  = NielsenNaesIiNwProperty
      {checkDigitString = Prelude.Nothing, sid = Prelude.Nothing,
       timezone = Prelude.Nothing}
instance ToResourceProperties NielsenNaesIiNwProperty where
  toResourceProperties NielsenNaesIiNwProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.NielsenNaesIiNw",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CheckDigitString" Prelude.<$> checkDigitString,
                            (JSON..=) "Sid" Prelude.<$> sid,
                            (JSON..=) "Timezone" Prelude.<$> timezone])}
instance JSON.ToJSON NielsenNaesIiNwProperty where
  toJSON NielsenNaesIiNwProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CheckDigitString" Prelude.<$> checkDigitString,
               (JSON..=) "Sid" Prelude.<$> sid,
               (JSON..=) "Timezone" Prelude.<$> timezone]))
instance Property "CheckDigitString" NielsenNaesIiNwProperty where
  type PropertyType "CheckDigitString" NielsenNaesIiNwProperty = Value Prelude.Text
  set newValue NielsenNaesIiNwProperty {..}
    = NielsenNaesIiNwProperty
        {checkDigitString = Prelude.pure newValue, ..}
instance Property "Sid" NielsenNaesIiNwProperty where
  type PropertyType "Sid" NielsenNaesIiNwProperty = Value Prelude.Double
  set newValue NielsenNaesIiNwProperty {..}
    = NielsenNaesIiNwProperty {sid = Prelude.pure newValue, ..}
instance Property "Timezone" NielsenNaesIiNwProperty where
  type PropertyType "Timezone" NielsenNaesIiNwProperty = Value Prelude.Text
  set newValue NielsenNaesIiNwProperty {..}
    = NielsenNaesIiNwProperty {timezone = Prelude.pure newValue, ..}