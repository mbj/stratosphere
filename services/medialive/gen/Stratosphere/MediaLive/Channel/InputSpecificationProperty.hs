module Stratosphere.MediaLive.Channel.InputSpecificationProperty (
        InputSpecificationProperty(..), mkInputSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputSpecificationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputspecification.html>
    InputSpecificationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputspecification.html#cfn-medialive-channel-inputspecification-codec>
                                codec :: (Prelude.Maybe (Value Prelude.Text)),
                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputspecification.html#cfn-medialive-channel-inputspecification-maximumbitrate>
                                maximumBitrate :: (Prelude.Maybe (Value Prelude.Text)),
                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputspecification.html#cfn-medialive-channel-inputspecification-resolution>
                                resolution :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputSpecificationProperty :: InputSpecificationProperty
mkInputSpecificationProperty
  = InputSpecificationProperty
      {codec = Prelude.Nothing, maximumBitrate = Prelude.Nothing,
       resolution = Prelude.Nothing}
instance ToResourceProperties InputSpecificationProperty where
  toResourceProperties InputSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.InputSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Codec" Prelude.<$> codec,
                            (JSON..=) "MaximumBitrate" Prelude.<$> maximumBitrate,
                            (JSON..=) "Resolution" Prelude.<$> resolution])}
instance JSON.ToJSON InputSpecificationProperty where
  toJSON InputSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Codec" Prelude.<$> codec,
               (JSON..=) "MaximumBitrate" Prelude.<$> maximumBitrate,
               (JSON..=) "Resolution" Prelude.<$> resolution]))
instance Property "Codec" InputSpecificationProperty where
  type PropertyType "Codec" InputSpecificationProperty = Value Prelude.Text
  set newValue InputSpecificationProperty {..}
    = InputSpecificationProperty {codec = Prelude.pure newValue, ..}
instance Property "MaximumBitrate" InputSpecificationProperty where
  type PropertyType "MaximumBitrate" InputSpecificationProperty = Value Prelude.Text
  set newValue InputSpecificationProperty {..}
    = InputSpecificationProperty
        {maximumBitrate = Prelude.pure newValue, ..}
instance Property "Resolution" InputSpecificationProperty where
  type PropertyType "Resolution" InputSpecificationProperty = Value Prelude.Text
  set newValue InputSpecificationProperty {..}
    = InputSpecificationProperty
        {resolution = Prelude.pure newValue, ..}